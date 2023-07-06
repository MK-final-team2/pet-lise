package shop.cart;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ShopCartController {

    @Autowired
    ShopCartService service;

    @GetMapping("/shopcart")
    public ModelAndView cartList() throws Exception {
        ShopCartDTO dto = new ShopCartDTO();
        List<ShopCartDTO> cart = service.getCartList(dto);

        ModelAndView mv = new ModelAndView();
        mv.addObject("cart", cart);
        mv.setViewName("/shop/shopCart");
        return mv;
    }
    
    @GetMapping("/deletecartlist")
    @ResponseBody
    public String cartDelete(@RequestParam("product_name") String product_name) {
    	service.deleteCartList(product_name);
    	return "";
    }
    
}