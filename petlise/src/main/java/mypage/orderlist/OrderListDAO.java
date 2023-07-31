package mypage.orderlist;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.payment.ShopOrderInfoDTO;

@Repository
public class OrderListDAO {
	
	@Autowired
	SqlSession session;
	
	public List<ShopOrderInfoDTO> getMyOrder(String user_id){
		return session.selectList("getMyOrder", user_id);
	}
	
	public int cancelOrder(String order_id) {
		return session.update("cancelOrder", order_id);
	}
}
