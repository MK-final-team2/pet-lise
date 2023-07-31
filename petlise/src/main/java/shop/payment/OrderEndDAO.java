package shop.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class OrderEndDAO {
	
	@Autowired
	SqlSession session;
	
	public List<ShopOrderInfoDTO> getOrderInfo(String user_id){
		return session.selectList("getOrderInfo", user_id);
	}
}
