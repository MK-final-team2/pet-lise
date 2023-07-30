package mypage.orderdetail;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import shop.payment.ShopOrderInfoDTO;
import shop.payment.ShopOrderProductDTO;
import user.UserDTO;

@Repository
public class OrderDetailDAO {
	
	@Autowired
	SqlSession session;
	
	public List<ShopOrderProductDTO> myOrderProduct(String order_id){
		return session.selectList("myOrderProduct", order_id);
	}
	
	public List<UserDTO> myUserInfo(String user_id){
		return session.selectList("myUserInfo", user_id);
	}
	
	public List<ShopOrderInfoDTO> myDeliveryInfo(String order_id){
		return session.selectList("myDeliveryInfo", order_id);
	}
}
