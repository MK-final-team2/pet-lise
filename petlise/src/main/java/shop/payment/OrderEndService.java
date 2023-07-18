package shop.payment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class OrderEndService {
	
	@Autowired
	OrderEndDAO dao;
	
	public List<ShopOrderInfoDTO> getOrderInfo(ShopOrderInfoDTO dto){
		return dao.getOrderInfo(dto);
	}
}
