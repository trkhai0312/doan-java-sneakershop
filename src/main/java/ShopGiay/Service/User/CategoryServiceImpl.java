package ShopGiay.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShopGiay.Dao.ProductsDao;
import ShopGiay.Dto.ProductsDto;
@Service
public class CategoryServiceImpl implements  ICategoryService {
	@Autowired
	
	private ProductsDao productsDao;

	public List<ProductsDto> GetAllProductsByID(int id) {
		
		return productsDao.GetAllProductsByID(id);
	}
	public List<ProductsDto> GetDataProductsPaginate(int id, int start, int totalPage) {
		 
		return  productsDao.GetDataProductsPaginates(id,start, totalPage );
	}
	

}
