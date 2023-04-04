package ShopGiay.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import ShopGiay.Dto.CartDto;

@Service
public interface ICartService {
	public HashMap<Long, CartDto> AddCart(Long id, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> EditCart(Long id, int quanty, HashMap<Long, CartDto> cart);
	public HashMap<Long, CartDto> DeleteCart(Long id, HashMap<Long, CartDto> cart);
	public int TotalQuanTy(HashMap<Long, CartDto> cart);
	public double TotalPrice(HashMap<Long, CartDto> cart);
}
