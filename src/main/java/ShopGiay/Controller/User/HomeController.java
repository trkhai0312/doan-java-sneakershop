package ShopGiay.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
@Controller
public class HomeController extends BaseController{
	
	  
	@RequestMapping(value = {"/", "/trang-chu"})
	public ModelAndView Index() {
		
		
		_mvShare.setViewName("user/index");
		return _mvShare;
	}

	@RequestMapping(value = {"/aboutus","/*/aboutus"})
	public ModelAndView Aboutus() {
		
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.setViewName("user/aboutus");
		return _mvShare;
	}
	@RequestMapping(value = {"/contact","/*/contact"})
	public ModelAndView Contact() {
		
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.setViewName("user/contact");
		return _mvShare;
	}
	@RequestMapping(value = {"/shop","/*/shop"})
	public ModelAndView Shop() {
		
		
		_mvShare.setViewName("user/shop");
		return _mvShare;
	}
}