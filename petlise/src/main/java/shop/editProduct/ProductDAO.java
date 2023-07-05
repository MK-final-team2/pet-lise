package shop.editProduct;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository
public interface ProductDAO {
	int insertProduct(ProductDTO dto);
	int maxProductNum();
	int countTotalProductNum();
}
