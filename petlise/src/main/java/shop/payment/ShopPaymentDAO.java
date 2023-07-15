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
	
	public List<ShopOrderProductDTO> getOrderList(ShopOrderProductDTO dto){
		return session.selectList("getOrderList", dto);
	}
	
	public List<UserDTO> getUserInfo(UserDTO dto){
		return session.selectList("getUserInfo", dto);
	}
	
	public int saveOrderInfo(ShopOrderInfoDTO dto){
		return session.insert("saveOrderInfo", dto);
	}
	
	public int orderConfirm(ShopOrderProductDTO dto) {
		return session.update("orderConfirm", dto);
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
