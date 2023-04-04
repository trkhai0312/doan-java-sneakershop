package ShopGiay.Service.User;

import java.util.List;

import org.springframework.stereotype.Service;

import ShopGiay.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductsByID(long id);
	public List<ProductsDto> GetProductByIDCategory(int id);
}
