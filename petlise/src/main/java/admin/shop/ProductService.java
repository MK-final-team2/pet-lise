package admin.shop;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductService {
	@Autowired
	ProductDAO dao;
	
	int insertProduct(ProductDTO dto) {
		return dao.insertProduct(dto);
	}
	
	int maxProductNum() {
		return dao.maxProductNum();
	}
	
	int countTotalProductNum() {
		return dao.countTotalProductNum();
	}
	
	List<ProductDTO> getAllProduct() {
		return dao.getAllProduct();
	}
	
	List<ProductDTO> getAllByPetType(String petType) {
		return dao.getAllByPetType(petType);
	}
}
