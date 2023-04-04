package ShopGiay.Service.User;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import ShopGiay.Dao.BillsDao;
import ShopGiay.Dto.CartDto;
import ShopGiay.Entity.BillDetail;
import ShopGiay.Entity.Bills;

@Service
public class BillsServiceImpl {
	@Autowired
	private BillsDao billsDao;
	
	
	public int AddBills(Bills bill) {
		return billsDao.AddBills(bill);
	}
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts) {
		long idBills =billsDao.GetIDLastBills();
		for(Map.Entry<Long, CartDto> itemCart : carts.entrySet()) {
			BillDetail billDetail = new BillDetail();
			billDetail.setId_bills(idBills);
			billDetail.setId_product(itemCart.getValue().getProduct().getId_product());
			billDetail.setQuanty(itemCart.getValue().getQuanty());
			billDetail.setTotal(itemCart.getValue().getTotalPrice());
			billsDao.AddBillsDetail(billDetail);
		}
	}
}