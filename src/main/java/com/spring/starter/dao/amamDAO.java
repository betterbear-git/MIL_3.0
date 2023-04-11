package com.spring.starter.dao;

import java.util.ArrayList;

import com.spring.starter.common.util.Pagination;
import com.spring.starter.model.videoDTO;
import com.spring.starter.model.videoViewDTO;
import com.spring.starter.model.qnaDTO;
import com.spring.starter.model.surveyDTO;

public interface amamDAO {
    public ArrayList<videoDTO> videoList();
    //public ArrayList<industryDTO> industryList();
    public ArrayList<videoViewDTO> getVideoCode(String videoCode);
    public ArrayList<qnaDTO> qnaList(Pagination pagination);
    public int getQnaListCnt();
    public ArrayList<surveyDTO> surveyList(Pagination pagination);
    public int getSurveyListCnt();
}
