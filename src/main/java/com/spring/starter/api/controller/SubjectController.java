package com.spring.starter.api.controller;

import com.spring.starter.api.response.SubjectDto;
import com.spring.starter.api.response.index.SubjectDetailsRes;
import com.spring.starter.api.response.index.SubjectRes;
import com.spring.starter.api.service.SubjectService;
import com.spring.starter.common.model.BaseResponse;
import com.spring.starter.dao.cilDAO;
import lombok.RequiredArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

@Controller
@RestController
@RequiredArgsConstructor
public class SubjectController {

    private final SubjectService subjectService;

    @Autowired
    private SqlSession sqlSession;

    @ResponseBody
    @RequestMapping(value="/cil/detail",method= RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map subjectDetail(Model model, String subject)
    {
        System.out.println("in"+subject);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectDetailList",dao.subjectDetailList(subject));
        result.put("subjectPreList",dao.subjectPreList(subject));
        //.put("subjectDetailCoreList",dao.subjectDetailCoreList(subject));
        //model.addAttribute("coreYN", dao.subjectDetailCoreList(subject));
        return result;
    }
    @ResponseBody
    @RequestMapping(value="/cil/track",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map subjectTrackList(Model model, int page_id)
    {
        System.out.println("in"+page_id);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        result.put("subjectTrackList",dao.subjectTrackList(page_id));
        return result;
    }

    @ResponseBody
    @RequestMapping(value="/cil/area",method=RequestMethod.POST, produces="application/json; charset=utf-8")
    public Map areaList(Model model, int div)
    {
        System.out.println("in"+div);
        cilDAO dao = sqlSession.getMapper(cilDAO.class);
        Map<String, Object> result = new HashMap<String, Object>();
        //result.put("subjectTrackList",dao.subjectTrackList(div));
        return result;
    }

    @GetMapping("/cil/subject")
    public ResponseEntity<? extends BaseResponse> getAll() {
        List<SubjectDto> collect = subjectService.getAllSubject().stream().map(subject -> new SubjectDto(subject)).collect(Collectors.toList());
        return ResponseEntity.status(200).body(new SubjectRes("모든 과목을 불러왔습니다", 200, collect));
    }

    @GetMapping("/cil/subject/{subjectId}")
    public ResponseEntity<? extends BaseResponse> getDetails(@PathVariable Long subjectId) {
        return ResponseEntity.status(200).body(new SubjectDetailsRes("과목 상세정보를 불러왔습니다.", 200, subjectService.getSubjectDetails(subjectId)));
    }

    @RequestMapping("/cil/test")
    public String callView() throws Exception {
        System.out.println("test");
        return "home";
    }
/*
    @GetMapping("cil")
    public List<Board> boardList(HttpServletRequest request, @ModelAttribute Board board) throws Exception {
        return this.boardService.selectBoardList(request, board);
    }*/
}
