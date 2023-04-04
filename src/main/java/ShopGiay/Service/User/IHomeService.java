package ShopGiay.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShopGiay.Dto.ProductsDto;
import ShopGiay.Entity.Categorys;
import ShopGiay.Entity.Menus;
import ShopGiay.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();	
	public List<Menus> GetDataMenus();
	public List<ProductsDto> GetDataProducts();
}
