package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ShopPaymentService {
	
	@Autowired
	ShopPaymentDAO dao;
	
	public List<ShopOrderProductDTO> getOrderList(ShopOrderProductDTO dto){
		return dao.getOrderList(dto);
	}
	
}
