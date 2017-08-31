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

    /*First method on start application*/
    /*Попадаем сюда на старте приложения (см. параметры аннтоции и настройки пути после деплоя) */

    @RequestMapping(value = "/orm", method = RequestMethod.GET)
    public ModelAndView main() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("resultObject", new Cars());
        modelAndView.setViewName("/orm/orm");
        return modelAndView;
    }
    /*как только на index.jsp подтвердится форма
    <spring:form method="post"  modelAttribute="userJSP" action="check-user">,
    то попадем вот сюда
     */
    @RequestMapping(value = "/check-user")
    public ModelAndView checkUser(@ModelAttribute("resultObject") Cars car) {
        ModelAndView modelAndView = new ModelAndView();
        Cars cars = ormService.queryFindUserByNumber(car.getCarnumber());
        //имя представления, куда нужно будет перейти
        modelAndView.setViewName("orm/orm");

        //записываем в атрибут userJSP (используется на странице *.jsp объект user
        modelAndView.addObject("resultObject", cars);
        return new ModelAndView("/orm/orm", "resultObject", cars);
    }

//    @RequestMapping(value = "/ormInsertUser/username/{username}/password/{password}/enabled/{enabled}"
//            , method=RequestMethod.GET)
//    @RequestMapping(value = "/ormInsertUser", method=RequestMethod.GET)
//    @RequestMapping(value = "/ormInsertUser")
//    public ModelAndView ormInsertUser(
//            @PathVariable(value="username") String username,
//            @PathVariable(value="password") String password,
//            @PathVariable(value="enabled") boolean enabled)

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
        ModelAndView modelAndView = new ModelAndView();

        boolean users = ormService.insertUser(user.getUsername(), user.getPassword());
        //имя представления, куда нужно будет перейти
        modelAndView.setViewName("form/registration");

        //записываем в атрибут userJSP (используется на странице *.jsp объект user
        return new ModelAndView("form/login", "resultObject", user);
    }
}
