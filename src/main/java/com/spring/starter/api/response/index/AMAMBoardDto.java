package com.spring.starter.api.response.index;


import com.spring.starter.db.entity.AMAM;
import lombok.Getter;

import java.util.Date;

@Getter
public class AMAMBoardDto {
    String title;
    Date createdAt;
    Long no;
    String area;
    String user;
    Long viewCount;

    public AMAMBoardDto (AMAM amam){
        this.title=amam.getTitle();
        this.createdAt=amam.getCreatedAt();
        this.no=amam.getNo();
        this.area=amam.getArea().getName();
        this.user=amam.getUser().getName();
        this.viewCount=amam.getViewCount();
    }
}