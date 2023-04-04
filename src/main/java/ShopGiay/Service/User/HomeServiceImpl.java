package ShopGiay.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShopGiay.Dao.CategorysDao;
import ShopGiay.Dao.MenusDao;
import ShopGiay.Dao.ProductsDao;
import ShopGiay.Dao.SlidesDao;
import ShopGiay.Dto.ProductsDto;
import ShopGiay.Entity.Categorys;
import ShopGiay.Entity.Menus;
import ShopGiay.Entity.Slides;
@Service
public class HomeServiceImpl {
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategorysDao categorysDao;
	@Autowired
	private MenusDao menusDao;
	@Autowired
	private ProductsDao productsDao;
	
	public List<Slides> GetDataSlide() {
		return slidesDao.GetDataSlide();
	}
	
	public List<Categorys> GetDataCategorys() {		
		return categorysDao.GetDataCategorys();
	}
	public List<Menus> GetDataMenus() {		
		return menusDao.GetDataMenus();
	}
	public List<ProductsDto> GetDataProducts() {
			List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}
}
