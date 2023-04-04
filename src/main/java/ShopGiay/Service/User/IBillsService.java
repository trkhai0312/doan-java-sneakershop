package ShopGiay.Service.User;

import java.util.HashMap;

import org.springframework.stereotype.Service;

import ShopGiay.Dto.CartDto;
import ShopGiay.Entity.Bills;

@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	public int AddBillsDetail(HashMap<Long, CartDto> carts);
}
