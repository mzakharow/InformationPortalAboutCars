package ru.mishost.InformationPortalAboutCars.mvc.orm;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.mishost.InformationPortalAboutCars.mvc.bean.Cars;

/**
 * Created for m.zakharov on 28.06.2017.
 */
@Repository
@Transactional
public class ORMService {

    @PersistenceContext
    private EntityManager entityManager;

    public Cars queryFindUserById (int id) {
//        System.out.println("ORMService queryFindUserById is called");
        return entityManager.find(Cars.class, id);
    }

    public Cars queryFindUserByNumber (String carnumber) {
        String qlString = "SELECT * FROM cars where carnumber = :carnumber";
        Query query = entityManager.createNativeQuery(qlString, Cars.class);
        query.setParameter("carnumber", carnumber.toUpperCase());
        List<Cars> result = query.getResultList();
        Cars user = new Cars();
        for(Cars res : result){
            user = res;
        }
        return user;
    }

    public boolean insertUser(String username, String password) {
        //System.out.println("ORMExample insertUser is called");

        String qlString = "insert into siteuser (username,password,enabled) values (?,?,?)";
        Query queryUser = entityManager.createNativeQuery(qlString);
        queryUser.setParameter(1, username);
        queryUser.setParameter(2, password);
        queryUser.setParameter(3, true);
        int result = queryUser.executeUpdate();

        String qlStringAuth = "insert into authorities (username,authority) values (?,?)";
        Query queryAuth = entityManager.createNativeQuery(qlStringAuth);
        queryAuth.setParameter(1, username);
        queryAuth.setParameter(2, "ROLE_ADMIN");
        int resultAuth = queryAuth.executeUpdate();
        return result > 0;
    }

}
