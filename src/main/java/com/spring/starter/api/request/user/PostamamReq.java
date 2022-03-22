package com.spring.starter.api.request.user;

import com.spring.starter.db.entity.AMAM;
import com.spring.starter.db.entity.Area;
import com.spring.starter.db.entity.User;
import lombok.Getter;

import javax.validation.constraints.NotNull;
import java.util.Date;

@Getter
public class PostamamReq {
    @NotNull
    String title;

    @NotNull
    String area;

    @NotNull
    String user;

    @NotNull
    String content;
    public AMAM toEntity(User user, Area area, Long number){
        AMAM amam = AMAM.builder()
                .title(this.title)
                .content(this.content)
                .createdAt(new Date())
                .area(area)
                .user(user)
                .viewCount(0L)
                .no(number+1L)
                .build();
        return amam;
    }
}
