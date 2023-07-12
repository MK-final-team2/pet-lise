package shop.cart;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShopCartDAO {

	@Autowired
	SqlSession session;

	public List<ShopCartDTO> getCartList(ShopCartDTO dto){
		return session.selectList("getCartList", dto);
	}

	public int deleteCartList(String product_name) {
		return session.delete("deleteCartList", product_name);
	}
	
	public int saveCartList(ShopCartDTO dto){
		return session.insert("saveCartList", dto);
	}
	
}
