package co.grandcircus.coffee;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import co.grandcircus.coffee.dao.ItemDao;
import co.grandcircus.coffee.dao.UserDao;
import co.grandcircus.coffee.entity.Item;
import co.grandcircus.coffee.entity.User;

@Controller
public class CoffeeController {

	@Autowired
	private ItemDao itemDao;
	@Autowired
	private UserDao userDao;

	@RequestMapping("/index")
	public ModelAndView showHomePage() {
		ModelAndView mav = new ModelAndView("index");
		return mav;

	}

	@RequestMapping("/registration-form")
	public ModelAndView showRegistrationForm() {
		ModelAndView mav = new ModelAndView("registration-form");
		return mav;

	}

	@RequestMapping("/registration-result") // add-submit
	public ModelAndView showRegistrationResult(@RequestParam("phonenumber") String phoneNumber,
			@RequestParam("firstname") String firstName, @RequestParam("lastname") String lastName,
			@RequestParam("email") String email, @RequestParam("username") String userName,
			@RequestParam("password") String password) {

		User user = new User();
		user.setPhoneNumber(phoneNumber);
		user.setFirstName(firstName);
		user.setLastName(lastName);
		user.setEmail(email);
		user.setUserName(userName);
		user.setPassword(password);

		ModelAndView mav = new ModelAndView("/registration-result"); // matches name of the JSP file
		userDao.create(user);
		mav.addObject("user", user);

		return mav;

	}

//	@RequestMapping("/admin")
//	public ModelAndView showAdmin(@RequestParam(value = "keyword", required = false) String keyword,
//			@RequestParam(value = "category", required = false) String category) {
//		List<Item> items = itemDao.findAll();
//		return new ModelAndView("admin", "items", items);
//
//	}

	@RequestMapping("/items")
	public ModelAndView showItems(@RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "category", required = false) String category) {
		List<Item> items = itemDao.findAll();
		return new ModelAndView("items", "items", items); // page index, database, object identifier

	}

	// }

	@RequestMapping("/admin")
	public ModelAndView listFood(@RequestParam(value = "keyword", required = false) String keyword,
			@RequestParam(value = "category", required = false) String category) {
		ModelAndView mav = new ModelAndView("admin");
		if (keyword != null && !keyword.isEmpty()) {
			mav.addObject("items", itemDao.findByKeyword(keyword));
		} /*
			 * else if (category != null && !category.isEmpty()) { mav.addObject("Item",
			 * itemDao.findByCategory(category)); }
			 */ else {
			mav.addObject("items", itemDao.findAll());
		}
		// list of categories needed for <select>
//		mav.addObject("categories", itemDao.findAllCategories());
		return mav;
	}

	@RequestMapping("/create")
	public ModelAndView showCreateForm() {
		// If there is only one model value to add, use this one-line shortcut.
		// Equivalent to
		// ModelAndView mav = new ModelAndView("food-form");
		// mav.addObject("title", "Add a Food");
		return new ModelAndView("create", "title", "Add an Item"); // jsp, exp lang, value of exp lang
	}

	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public ModelAndView submitCreateForm(Item item) {
		itemDao.create(item);
		return new ModelAndView("redirect:/admin");
	}

	// path variable required to identify which food we're editing
	@RequestMapping("/admin/{id}/update") // this method goes to update.jsp
	public ModelAndView showEditForm(@PathVariable("id") int id) {
		ModelAndView mav = new ModelAndView("update");
		mav.addObject("items", itemDao.findById(id));
		mav.addObject("title", "Edit Item");
		return mav;
	}

	// same URL but different method
	@RequestMapping(value = "/admin/{id}/update", method = RequestMethod.POST)
	public ModelAndView submitEditForm(Item item, @PathVariable("id") int id) {
		item.setId(id);
		itemDao.update(item);
		return new ModelAndView("redirect:/admin");
	}

	@RequestMapping("/delete")
	public ModelAndView delete(@RequestParam("id") int id) {
		itemDao.delete(id);
		return new ModelAndView("redirect:/admin");
	}
}
