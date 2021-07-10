package com.tig.wdc.user.model.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.tig.wdc.model.dto.TeacherInfoDTO;
import com.tig.wdc.user.model.dao.UserInfoMapper;
import com.tig.wdc.user.model.dto.UserClassDTO;
import com.tig.wdc.user.model.dto.UserCouponDTO;
import com.tig.wdc.user.model.dto.UserInfoDTO;
import com.tig.wdc.user.model.dto.UserLikeClassDTO;
import com.tig.wdc.user.model.dto.UserReviewDTO;

@Service
public class UserInfoServiceImpl implements UserInfoService {

	@Autowired
	private UserInfoMapper mapper;

	public UserInfoServiceImpl(UserInfoMapper mapper) {
		this.mapper = mapper;
	}

	@Override
	public UserInfoDTO selectUser(int userNo) {
		return mapper.selectUser(userNo);
	}

	@Override
	public UserInfoDTO findUserInfo(UserInfoDTO userInfoDTO) {
		return mapper.findfindUserInfo(userInfoDTO);
	}

	@Override
	public List<UserCouponDTO> selectCouponList(int userNo) {
		return mapper.selectCouponList(userNo);
	}

	@Override
	public List<UserClassDTO> selectScheduledOneDayClassList(int userNo) {
		return mapper.selectScheduledOneDayClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectScheduledRegularClassList(int userNo) {
		return mapper.selectScheduledRegularClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectparticipatingOneDayClassList(int userNo) {
		return mapper.selectparticipatingOneDayClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectparticipatingRegularClassList(int userNo) {
		return mapper.selectparticipatingRegularClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectComplateClassList(int userNo) {
		return mapper.selectComplateClassList(userNo);
	}

	@Override
	public List<UserClassDTO> selectRefundClassList(int userNo) {
		return mapper.selectRefundClassList(userNo);
	}

	@Override
	public UserClassDTO selectScheduleDetail(UserClassDTO userClassDTO) {
		return mapper.selectScheduleDetail(userClassDTO);
	}

	@Override
	public int insertReview(UserReviewDTO userReviewDTO) {
		return mapper.insertReview(userReviewDTO);
	}

	@Override
	public int selectReviewYn(int aplNo) {
		return mapper.selectReviewYn(aplNo);
	}

	@Override
	public List<UserCouponDTO> selectAllUserCouponList() {
		return mapper.selectAllUserCouponList();
	}

	@Override
	public int selectUseAllUserCoupon(UserCouponDTO alluserCouponDTO) {
		return mapper.selectUseAllUserCoupon(alluserCouponDTO);
	}

	@Override
	public UserInfoDTO selectExistingInfo(Map<String, String> result) {
		return mapper.selectExistingInfo(result);
	}

	@Override
	public String selectCheckDoubleId(String checkId) {
		return mapper.selectCheckDoubleId(checkId);
	}

	@Override
	public int registUser(UserInfoDTO registInfo) {
		return mapper.registUser(registInfo);
	}

	@Override
	public int selectLikeStatus(UserLikeClassDTO likeClassDTO) {
		return mapper.selectLikeStatus(likeClassDTO);
	}

	@Override
	public int selectLikeHistory(UserLikeClassDTO likeClassDTO) {
		return mapper.selectLikeHistory(likeClassDTO);
	}

	@Override
	public int insertLike(UserLikeClassDTO likeClassDTO) {
		return mapper.insertLike(likeClassDTO);
	}

	@Override
	public int updateLikeYn(UserLikeClassDTO likeClassDTO) {
		return mapper.updateLikeYn(likeClassDTO);
	}

}
