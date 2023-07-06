package shop.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopCartService {

	@Autowired
	ShopCartDAO dao;

	public List<ShopCartDTO> getCartList(ShopCartDTO dto){
		return dao.getCartList(dto);
	}

	public int deleteCartList(String product_name) {
		return dao.deleteCartList(product_name);
	}
	
}
