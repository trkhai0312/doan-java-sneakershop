package ShopGiay.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShopGiay.Dao.ProductsDao;
import ShopGiay.Dto.ProductsDto;

@Service
public class ProductServiceImpl implements IProductService {
	
	@Autowired
	ProductsDao productsDao = new ProductsDao();
	
	public ProductsDto GetProductsByID(long id) {
		List<ProductsDto> listproducts = productsDao.GetProductsByID(id) ;
		return listproducts.get(0);
		
		
	}

	@Override
	public List<ProductsDto> GetProductByIDCategory(int id) {
	
		return productsDao.GetAllProductsByID(id);
	}

}
