package admin.shop;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import pagination.SearchDTO;

@Mapper
@Repository
public interface ProductDAO {
	int insertProduct(ProductDTO dto);
	int maxProductNum();
	int countTotalProductNum();
	List<ProductDTO> getAllProduct();
	List<ProductDTO> getAllByPetType(String petType);
	int deleteProduct(String product_id);	
	
	//Pagination
	List<ProductDTO> getAllProductPaging(SearchDTO dto);
	int getCount(SearchDTO dto);
}
