package mypage.orderlist;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;
import shop.payment.ShopOrderInfoDTO;

@Mapper
@Repository
public interface OrderListDAO {
	
	List<ShopOrderInfoDTO> getMyOrder(SearchDTO dto);
	Integer getMyOrderCount(SearchDTO dto);
	
	int cancelOrder(String order_id);
}
