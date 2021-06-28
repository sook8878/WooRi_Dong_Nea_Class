package com.tig.wdc.admin.model.dao;

import java.util.List;

import com.tig.wdc.admin.model.dto.ClassDTO;
import com.tig.wdc.admin.model.dto.ReportDTO;
import com.tig.wdc.admin.model.dto.TotalDTO;
import com.tig.wdc.admin.model.dto.QuestionDTO;


public interface AdminMapper {

	List<TotalDTO> selectTotalUsertList();
	
	List<ClassDTO> selectAllClassList();

	List<ReportDTO> selectAllReportList();

	List<TotalDTO> selectTeacherList();

	List<QuestionDTO> selectAllQuestionList();

}