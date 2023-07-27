package shop.payment;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import admin.shop.ProductDTO;
import user.UserDTO;

@Repository
public class ShopPaymentDAO {

	@Autowired
	SqlSession session;
	
	public List<ShopOrderProductDTO> getOrderList(String user_id){
		return session.selectList("getOrderList", user_id);
	}
	
	public List<UserDTO> getUserInfo(String user_id){
		return session.selectList("getUserInfo", user_id);
	}
	
	public int saveOrderInfo(ShopOrderInfoDTO dto){
		return session.insert("saveOrderInfo", dto);
	}
	
	public int orderConfirm(String user_id) {
		return session.update("orderConfirm", user_id);
	}
	
	public int deleteCart(String user_id) {
		return session.delete("deleteCart", user_id);
	}
	
	public List<ProductDTO> getProducts(ProductDTO dto){
		return session.selectList("getProducts", dto);
	}
	
	public int updateSales(int product_id) {
	    return session.update("updateSales", product_id);
	}
}
