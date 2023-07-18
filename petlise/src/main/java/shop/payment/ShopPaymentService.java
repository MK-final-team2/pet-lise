package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.shop.ProductDTO;
import user.UserDTO;

@Service
public class ShopPaymentService {
	
	@Autowired
	ShopPaymentDAO dao;
	
	public List<ShopOrderProductDTO> getOrderList(ShopOrderProductDTO dto){
		return dao.getOrderList(dto);
	}
	
	public List<UserDTO> getUserInfo(UserDTO dto){
		return dao.getUserInfo(dto);
	}
	
	public int saveOrderInfo(ShopOrderInfoDTO dto){
		return dao.saveOrderInfo(dto);
	}
	
	public int orderConfirm(ShopOrderProductDTO dto) {
		return dao.orderConfirm(dto);
	}
	
	public int deleteCart(String user_id) {
		return dao.deleteCart(user_id);
	}
	
	public List<ProductDTO> getProducts(ProductDTO dto){
		return dao.getProducts(dto);
	}
	
	public int updateSales(int product_id) {
		return dao.updateSales(product_id);
	}
}
