package shop.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShopPaymentDAO {

	@Autowired
	SqlSession session;
	
	public List<ShopOrderProductDTO> getOrderList(ShopOrderProductDTO dto){
		return session.selectList("getOrderList", dto);
	}
}
