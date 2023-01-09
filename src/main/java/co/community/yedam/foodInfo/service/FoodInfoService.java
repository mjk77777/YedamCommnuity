package co.community.yedam.foodInfo.service;

import java.util.List;

public interface FoodInfoService {
	List<FoodInfoVO> foodInfoSelectList();
	FoodInfoVO foodInfoSelect(FoodInfoVO vo);
	int foodInfoInsert(FoodInfoVO vo);
	int foodInfoUpdate(FoodInfoVO vo);
	int foodInfoDelete(FoodInfoVO vo);
}
