package ru.mishost.InformationPortalAboutCars.mvc.orm;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import ru.mishost.InformationPortalAboutCars.mvc.bean.Cars;

import java.util.List;

import static java.lang.String.format;

/**
 * Created for mishost.ru on 28.06.2017.
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
//        Cars users = ormService.queryFindUserById(user.getIdUser());
        Cars cars = ormService.queryFindUserByNumber(car.getCarnumber());
        //имя представления, куда нужно будет перейти
        modelAndView.setViewName("orm/orm");

        //записываем в атрибут userJSP (используется на странице *.jsp объект user
        modelAndView.addObject("resultObject", cars);

//        List<String> charList = new ArrayList<String>();
//        charList.add("а");
//        charList.add("в");
//        charList.add("е");
//        charList.add("к");
//        charList.add("м");
//        charList.add("н");
//        charList.add("о");
//        charList.add("р");
//        charList.add("с");
//        charList.add("т");
//        charList.add("у");
//        charList.add("х");
//
//        List<String> location = new ArrayList<String>();
//        location.add("77");
//        location.add("177");
//        location.add("97");
//        location.add("197");
//        location.add("50");
//        location.add("150");
//        location.add("99");
//        location.add("199");
//
//        List<String> nameListM = new ArrayList<String>();
//        nameListM.add("Петров");
//        nameListM.add("Иванов");
//        nameListM.add("Сидоров");
//        nameListM.add("Скворцов");
//        nameListM.add("Соколов");
//        nameListM.add("Захаров");
//        nameListM.add("Мельников");
//        nameListM.add("Пулькин");
//        nameListM.add("Дулькин");
//        nameListM.add("Чебурашкин");
//        nameListM.add("Курочкин");
//        nameListM.add("Лавочкин");
//        nameListM.add("Путин");
//        nameListM.add("Медведев");
//        nameListM.add("Трампов");
//        nameListM.add("Обамов");
//        nameListM.add("Пелюлькин");
//        nameListM.add("Жаров");
//        nameListM.add("Жабин");
//        nameListM.add("Курносов");
//
//        List<String> nameListW = new ArrayList<String>();
//        nameListW.add("Петрова");
//        nameListW.add("Иванова");
//        nameListW.add("Сидорова");
//        nameListW.add("Скворцова");
//        nameListW.add("Соколова");
//        nameListW.add("Захарова");
//        nameListW.add("Мельникова");
//        nameListW.add("Пулькина");
//        nameListW.add("Дулькина");
//        nameListW.add("Чебурашкина");
//        nameListW.add("Курочкина");
//        nameListW.add("Лавочкина");
//        nameListW.add("Путина");
//        nameListW.add("Медведева");
//        nameListW.add("Трампова");
//        nameListW.add("Обамова");
//        nameListW.add("Пелюлькина");
//        nameListW.add("Жарова");
//        nameListW.add("Жабина");
//        nameListW.add("Курносова");
//
//        List<String> middleMList = new ArrayList<String>();
//        middleMList.add("Петрович");
//        middleMList.add("Иванович");
//        middleMList.add("Сидорович");
//        middleMList.add("Ильич");
//        middleMList.add("Михайлович");
//        middleMList.add("Владимирович");
//        middleMList.add("Владленович");
//        middleMList.add("Максимович");
//        middleMList.add("Андреевич");
//        middleMList.add("Кириллович");
//        middleMList.add("Сергеевич");
//        middleMList.add("Александрович");
//        middleMList.add("Анатольевич");
//        middleMList.add("Геннадьевич");
//
//        List<String> lastMList = new ArrayList<String>();
//        lastMList.add("Петр");
//        lastMList.add("Иван");
//        lastMList.add("Сидор");
//        lastMList.add("Илья");
//        lastMList.add("Михаил");
//        lastMList.add("Владимир");
//        lastMList.add("Владлен");
//        lastMList.add("Максим");
//        lastMList.add("Андрей");
//        lastMList.add("Кирилл");
//        lastMList.add("Сергей");
//        lastMList.add("Александр");
//        lastMList.add("Анатолий");
//        lastMList.add("Геннадий");
//
//        List<String> middleWList = new ArrayList<String>();
//        middleWList.add("Петровна");
//        middleWList.add("Ивановна");
//        middleWList.add("Сидоровна");
//        middleWList.add("Валентиновна");
//        middleWList.add("Михайловна");
//        middleWList.add("Владимировна");
//        middleWList.add("Владленовна");
//        middleWList.add("Максимовна");
//        middleWList.add("Андреевна");
//        middleWList.add("Кирилловна");
//        middleWList.add("Сергеевна");
//        middleWList.add("Александровна");
//        middleWList.add("Анатольевна");
//        middleWList.add("Геннадьевна");
//
//        List<String> lastWList = new ArrayList<String>();
//        lastWList.add("Оксана");
//        lastWList.add("Светлана");
//        lastWList.add("Екатерина");
//        lastWList.add("Елена");
//        lastWList.add("Наталия");
//        lastWList.add("София");
//        lastWList.add("Ксения");
//        lastWList.add("Валентина");
//        lastWList.add("Ольга");
//        lastWList.add("Алла");
//        lastWList.add("Анна");
//        lastWList.add("Юлия");
//        lastWList.add("Татьяна");
//        lastWList.add("Мария");
//
//        List<String> carList = new ArrayList<String>();
//        carList.add("Nissa Teana");
//        carList.add("Nissa Juke");
//        carList.add("Nissa Murano");
//        carList.add("Toyota Camry");
//        carList.add("Reno Logan");
//        carList.add("Peugeot 206");
//        carList.add("Peugeot 107");
//        carList.add("Peugeot 3008");
//        carList.add("ВАЗ 2108");
//        carList.add("ВАЗ 2101");
//        carList.add("ВАЗ 2106");
//        carList.add("ВАЗ 2107");
//        carList.add("ВАЗ 2110");
//        carList.add("ВАЗ 2111");
//        carList.add("ВАЗ 2112");
//        carList.add("ВАЗ 2115");
//        carList.add("Infinity QX35");
//        carList.add("Infinity QX60");
//        carList.add("Ferrari Spider");
//        carList.add("Bugatti Veyron");
//        carList.add("MacLaren F1");
//        carList.add("Kia Rio");
//        carList.add("ГазельNEXT");
//        carList.add("ГАЗ 66");
//        carList.add("BMW M5");
//        carList.add("BMW X1");
//        carList.add("BMW X3");
//        carList.add("BMW X5");
//        carList.add("Mercedes C120");
//        carList.add("Mercedes ML");
//        carList.add("Mercedes C120 CGL");
//        carList.add("Mercedes GLK");
//        carList.add("Mercedes GLX");
//        carList.add("Audi A4");
//        carList.add("Audi A6");
//        carList.add("Audi A8");
//        carList.add("Audi Q3");
//        carList.add("Audi Q5");
//        carList.add("Audi Q7");
//        carList.add("УАЗ Патриот");
//        carList.add("Ford Focus");
//        carList.add("Ford Mondeo");
//        carList.add("Volvo XC90");
//        carList.add("Volvo XC60");
//
//        List<String> codePhone = new ArrayList<String>();
//        codePhone.add("+7926");
//        codePhone.add("+7903");
//        codePhone.add("+7905");
//        codePhone.add("+7916");
//        codePhone.add("+7967");
//        codePhone.add("+7901");
//
//        Random rnd = new Random(System.currentTimeMillis());
//        int phone = 1234567;
//        int iduser = 6;
//        for (String charOne : charList) {//первая буква
//            for (int i = 1; i <= 999; i++) {//цмфры
//                for (String charTwo : charList) {//вторая буква
//                    for (String charThree : charList) {//третья буква
//
//                        int numberChar = rnd.nextInt(11); //буквы
//                        int numberLocal = rnd.nextInt(7); //регионы
//                        int numberFam = rnd.nextInt(20); //фамилии в именах
//                        int numberName = rnd.nextInt(14); //отчества и имена
//                        int numberCar = rnd.nextInt(44); //машины
//                        int numberCode = rnd.nextInt(6); //код телефона
//
//                        String username;
//                        if(phone%2 == 0) {
//                            username = nameListM.get(numberFam) + " " + lastMList.get(numberName) + " " + middleMList.get(numberName);
//                        }
//                        else{
//                            username = nameListW.get(numberFam) + " " + lastWList.get(numberName) + " " + middleWList.get(numberName);
//                        }
//                        int year = 2017-numberChar;
//                        String manufacture = "" + year;
//                        boolean result = ormService.insertOnceUser(iduser, false, charOne.toUpperCase()+format("%03d",i)+charTwo.toUpperCase()+charThree.toUpperCase()+location.get(numberLocal), username, "VQ9I8JJT9RF6J6T9Y", codePhone.get(numberCode)+format("%07d",phone), manufacture, true, carList.get(numberCar));
//                        iduser++;
//                        phone++;
//
//                    }
//                }
//            }
//
//        }



//        boolean taxi = false;
//        int iduser = 4;
//        String carnumber = "Х444ЕР197";
//        String username = "Петров Валерий Андреевич";
//        String vin = "RLK8H67FK864JFD99";
//        String phone = "+79997654321";
//        String manufacture = "2016-12-15";
//        boolean customs = true;
//        String model = "Bugatti Veyron";
//        boolean result = ormService.insertOnceUser(iduser, taxi, carnumber, username, vin, phone, manufacture, customs, model);

        //return modelAndView; //после уйдем на представление, указанное чуть выше, если оно будет найдено.
        return new ModelAndView("/orm/orm", "resultObject", cars);
    }


    @RequestMapping(value = "/ormFindAllUsers", method= RequestMethod.GET)
    public ModelAndView ormFindAllUsers() {
        //System.out.println("ORMController ormFindAllUsers is called");
        List<Cars> users = ormService.queryFindAllUsersJPA();
        return new ModelAndView("/orm/orm", "resultObject", users);
    }


    @RequestMapping(value = "/queryFindByIdUser/{userid}", method = RequestMethod.GET)
    public ModelAndView queryFindByIdUser(@PathVariable("userid") int userid) {
//        System.out.println("ORMController queryFindByIdUser is called");
//        System.out.println(userid);
        Cars user = ormService.queryFindUserById(userid);
        //Cars user = new Cars();
        return new ModelAndView("/orm/orm", "resultObject", user);
    }

    @RequestMapping(value = "/ormUpdateUser/iduser/{iduser}/enabled/{enabled}", method=RequestMethod.GET)
    public ModelAndView ormUpdateUser(
            @PathVariable(value="IDUSER") int iduser,
            @PathVariable(value="enabled") boolean enabled) {
        //System.out.println("ORMController ormUpdateUser is called");
        boolean result = ormService.updateUser(iduser, enabled);
        return new ModelAndView("/orm/orm", "resultObject", result);
    }
    @RequestMapping(value = "/ormDeleteUser/iduser/{iduser}", method=RequestMethod.GET)
    public ModelAndView ormDeleteUser(@PathVariable(value="iduser") int iduser) {
        //System.out.println("ORMController jdbcDelete is called");
        boolean result = ormService.deleteUser(iduser);
        return new ModelAndView("/orm/orm", "resultObject", result);
    }

    @RequestMapping(value = "/ormInsertUser/username/{username}/password/{password}/enabled/{enabled}"
            , method=RequestMethod.GET)
    public ModelAndView ormInsertUser(
            @PathVariable(value="username") String username,
            @PathVariable(value="password") String password,
            @PathVariable(value="enabled") boolean enabled) {
        //System.out.println("ORMController ormInsertUser is called");
        boolean result = ormService.insertUser(username, password, enabled);
        return new ModelAndView("/orm/orm", "resultObject", result);

    }
}
