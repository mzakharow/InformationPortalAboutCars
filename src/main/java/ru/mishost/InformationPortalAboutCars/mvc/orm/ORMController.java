package ru.mishost.InformationPortalAboutCars.mvc.orm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.mishost.InformationPortalAboutCars.mvc.bean.Cars;
import ru.mishost.InformationPortalAboutCars.mvc.bean.User;

/**
 * Created for m.zakharov on 28.06.2017.
 */
@Controller
public class ORMController {

    @Autowired
    private ORMService ormService;

    @RequestMapping(value = "/orm", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("resultObject", new Cars());
        modelAndView.setViewName("/orm/orm");
        return modelAndView;
    }

    @RequestMapping(value = "/check-user")
    public ModelAndView checkUser(@ModelAttribute("resultObject") Cars car) {
        ModelAndView modelAndView = new ModelAndView();
        Cars cars = ormService.queryFindUserByNumber(car.getCarnumber());
        modelAndView.setViewName("orm/orm");

        modelAndView.addObject("resultObject", cars);
        return new ModelAndView("/orm/orm", "resultObject", cars);
    }

    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public ModelAndView mainUser() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("resultObject", new User());
        modelAndView.setViewName("form/registration");
        return modelAndView;
    }

    @RequestMapping(value = "/ormInsertUser")
    public ModelAndView ormInsertUser(@ModelAttribute("resultObject") User user)
    {
        boolean users = ormService.insertUser(user.getUsername(), user.getPassword());
        return new ModelAndView("form/login", "resultObject", user);
    }
}
