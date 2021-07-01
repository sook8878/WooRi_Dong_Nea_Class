package com.tig.wdc.user.model.dao;

import java.util.List;

import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;

public interface UserInfoMapper {
	
	UserInfoDTO selectUser(int userNo);

	UserInfoDTO findfindUserInfo(UserInfoDTO userInfoDTO);

	List<UserCouponDTO> selectCouponList(int userNo);

	List<UserClassDTO> selectScheduledOneDayClassList(int userNo);

	List<UserClassDTO> selectScheduledRegularClassList(int userNo);

	List<UserClassDTO> selectparticipatingOneDayClassList(int userNo);

	List<UserClassDTO> selectparticipatingRegularClassList(int userNo);

	List<UserClassDTO> selectComplateClassList(int userNo);

	List<UserClassDTO> selectRefundClassList(int userNo);

}
