package store.web.controller.admin.item;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.SimpleFormController;
import org.springframework.validation.BindException;
import org.springframework.dao.DataIntegrityViolationException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import store.logic.Shop;
import store.logic.Item;
import store.web.WebConstants;

import java.util.Map;
import java.util.HashMap;

public class AdminAddItemController extends SimpleFormController 
{
	private Shop shopService;
	
	public Shop getShopService() 
	{
		return this.shopService;
	}
	
	public void setShopService(Shop shop) 
	{
		this.shopService = shop;
	}
	
	@SuppressWarnings({ "rawtypes", "unchecked" })
	protected Map referenceData(HttpServletRequest request) throws Exception 
	{
		//System.out.println("referenceData()");
		Map map = new HashMap();
		map.put(WebConstants.CATEGORY_LIST, this.shopService.getAllCategory());
		map.put(WebConstants.EVENT_LIST, this.shopService.getAllEvent());
		return map;
	}
	 
	protected ModelAndView onSubmit(HttpServletRequest req, HttpServletResponse res, Object cmd, BindException exception) throws Exception
	{
		// Casting command
		Item item = (Item) cmd;

		item.setVisit(new Integer(0));
		item.setSold(new Integer(0));
		item.setLastSold(new java.util.Date());
		item.setLastVisit(new java.util.Date());
		item.setLastUpdate(new java.util.Date());

		try {
			this.shopService.entryItem(item);
			
			ModelAndView modelAndView = new ModelAndView(getSuccessView());
			return modelAndView;
		}
		catch (DataIntegrityViolationException e) 
		{
			exception.reject("error.duplicate");
			return showForm(req, res, exception);
		}
	}
}
