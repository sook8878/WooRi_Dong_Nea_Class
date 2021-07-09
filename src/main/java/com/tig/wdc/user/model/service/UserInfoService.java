package com.tig.wdc.user.model.service;

import java.util.List;
import java.util.Map;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

public interface UserInfoService {

	public UserInfoDTO selectUser(int userNo);

	public UserInfoDTO findUserInfo(UserInfoDTO userInfoDTO);

	public List<UserCouponDTO> selectCouponList(int userNo);

	public List<UserClassDTO> selectScheduledOneDayClassList(int userNo);

	public List<UserClassDTO> selectScheduledRegularClassList(int userNo);
	
	public List<UserClassDTO> selectparticipatingOneDayClassList(int userNo);

	public List<UserClassDTO> selectparticipatingRegularClassList(int userNo);

	public List<UserClassDTO> selectComplateClassList(int userNo);

	public List<UserClassDTO> selectRefundClassList(int userNo);

	public UserClassDTO selectScheduleDetail(UserClassDTO userClassDTO);
	
	int insertReview(UserReviewDTO userReviewDTO);

	public int selectReviewYn(int aplNo);

	public List<UserCouponDTO> selectAllUserCouponList();

	public int selectUseAllUserCoupon(UserCouponDTO alluserCouponDTO);

	public UserInfoDTO selectExistingInfo(Map<String, String> result);

	public Object selectCheckDoubleId(String checkId);

	public int registUser(UserInfoDTO registInfo);

}
