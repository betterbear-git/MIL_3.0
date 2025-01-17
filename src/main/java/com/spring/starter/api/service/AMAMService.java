package com.spring.starter.api.service;

import com.spring.starter.api.request.user.*;
import com.spring.starter.api.response.index.AMAMBoardDto;
import com.spring.starter.api.response.index.AMAMDto;
import com.spring.starter.api.response.index.AMAMReplyDto;
import com.spring.starter.config.security.SecurityUtil;
import com.spring.starter.db.entity.*;
import com.spring.starter.db.repository.AMAMReplyRepository;
import com.spring.starter.db.repository.AMAMRepository;
import com.spring.starter.db.repository.AreaRepository;
import com.spring.starter.db.repository.UserRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.stereotype.Service;
import org.springframework.data.domain.Pageable;


import javax.transaction.Transactional;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@RequiredArgsConstructor
public class AMAMService {
    private final AMAMRepository amamRepository;
    private final UserRepository userRepository;
    private final AreaRepository areaRepository;
    private final AMAMReplyRepository amamReplyRepository;

    public List<MentorVerfiyDto> addAMAMAndfindMentor(PostamamReq postamamReq) {
        User user = userRepository.findByName(postamamReq.getUser()).orElse(null);
        Area area = areaRepository.findByName(postamamReq.getArea()).orElse(null);
        amamRepository.save(postamamReq.toEntity(user, area));

        List<User> userList = userRepository.findByAreaAndAuthority(area, Authority.ROLE_MENTOR);
        List<MentorVerfiyDto> mentorVerfiyDtoList = new ArrayList<>();
        for(User mentorUser : userList){
            mentorVerfiyDtoList.add(MentorVerfiyDto.builder()
                    .title(postamamReq.getTitle())
                    .email(mentorUser.getEmail())
                    .url("media-jobs.ajou.ac.kr/amam/board/"+postamamReq.getTitle()+"/reply/"+mentorUser.getUserId())
                    .build());
        }
        return mentorVerfiyDtoList;
    }

    @Transactional
    public List<AMAMBoardDto> getAll(Pageable pageable) {
        Page<AMAM> tmp_list = amamRepository.findAll(pageable);
        return tmp_list.toList().stream().map(s -> new AMAMBoardDto(s)).collect(Collectors.toList());
    }

    @Transactional
    public List<AMAMBoardDto> getAreaAll(String areaName, Pageable pageable) {
        Area area = areaRepository.findByName(areaName).orElse(null);
        Page<AMAM> tmp_list = amamRepository.findByArea(area, pageable);
        return tmp_list.toList().stream().map(s -> new AMAMBoardDto(s)).collect(Collectors.toList());
    }

    @Transactional
    public AMAMDto getContent(String title) {
        return amamRepository.findByTitle(title)
                .map(AMAMDto::new)
                .orElseThrow(() -> new RuntimeException("게시글이 존재하지 않습니다."));
    }

    @Transactional
    public List<AMAMBoardDto> getAMAMByKeword(Pageable pageable, String section, String keyword) {
        switch (section) {
            case "user":
                User user = userRepository.findByName(keyword).orElse(null);
                return amamRepository.findByUser(pageable, user)
                        .toList()
                        .stream()
                        .map(s -> new AMAMBoardDto(s))
                        .collect(Collectors.toList());
            case "title":
                return amamRepository.findByTitleContaining(pageable, keyword)
                        .toList()
                        .stream()
                        .map(s -> new AMAMBoardDto(s))
                        .collect(Collectors.toList());
            case "content":
                return amamRepository.findByContentContaining(pageable, keyword)
                        .toList()
                        .stream()
                        .map(s -> new AMAMBoardDto(s))
                        .collect(Collectors.toList());
            default:
                return null;
        }
    }

    @Transactional
    public boolean authCheck(String title){
        Long id = amamRepository.findByTitle(title).orElseThrow(()->new RuntimeException()).getUser().getId();
        return id.equals(SecurityUtil.getCurrentUserId());
    }

    @Transactional
    public void updateAMAM(ModifyamamReq modifyamamReq, String title){
        Area area = areaRepository.findByName(modifyamamReq.getArea()).orElse(null);
        AMAM amam = amamRepository.findByTitle(title).orElse(null);
        amam.modifyAMAM(modifyamamReq.getTitle(),area,modifyamamReq.getContent());
        amamRepository.save(amam);
    }

    @Transactional
    public void deleteAMAM(String title){
        amamRepository.deleteByTitle(title);
    }

    @Transactional
    public void addReplyContent(String title, PostamamReplyReq postamamReplyReq){
        AMAM amam = amamRepository.findByTitle(title).orElse(null);
        User user = userRepository.findById(SecurityUtil.getCurrentUserId()).orElse(null);
        Area area = amam.getArea();
        String replyTitle = "Re:"+title;
        amamReplyRepository.save(postamamReplyReq.toEntity(replyTitle,user,area,amam));
    }

    @Transactional
    public void addReplyContentByEmail(String title, String mentor, PostamamEmailReplyReq postamamEmailReplyReq){
        AMAM amam = amamRepository.findByTitle(title).orElse(null);
        User user = userRepository.findByUserId(mentor).orElse(null);
        Area area = amam.getArea();
        String replyTitle = "Re:"+title;
        amamReplyRepository.save(postamamEmailReplyReq.toEntity(replyTitle,user,area,amam));
    }

    @Transactional
    public AMAMReplyDto getReplyContent(String title, String mentor) {
        User replier = userRepository.findByUserId(mentor).orElse(null);
        return amamReplyRepository.findByTitleAndUser(title,replier)
                .map(AMAMReplyDto::new)
                .orElseThrow(() -> new RuntimeException("게시글이 존재하지 않습니다."));
    }

    @Transactional
    public void updateAMAMReply(ModifyamamReq modifyamamReq, String title){
        Area area = areaRepository.findByName(modifyamamReq.getArea()).orElse(null);
        AMAMReply amamReply = amamReplyRepository.findByTitle(title).orElse(null);
        amamReply.modifyAMAMReply(modifyamamReq.getTitle(),area,modifyamamReq.getContent());
        amamReplyRepository.save(amamReply);
    }

    @Transactional
    public void deleteAMAMReply(String title){amamReplyRepository.deleteByTitle(title);}
}
