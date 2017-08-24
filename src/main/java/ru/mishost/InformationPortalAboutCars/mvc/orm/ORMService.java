package ru.mishost.InformationPortalAboutCars.mvc.orm;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import ru.mishost.InformationPortalAboutCars.mvc.bean.Cars;

/**
 * Created for mishlen on 28.05.2017.
 */
@Repository
@Transactional //need to update\delete queries. Don't forget <tx:annotation-driven/>
public class ORMService {

    @PersistenceContext
    private EntityManager entityManager;

    public List<Cars> queryFindAllUsersJPA() {
        //System.out.println("ORMService queryfindAllUsersJPA is called");
        String query = "from cars order by iduser";
        TypedQuery<Cars> typedQuery = entityManager.createQuery(query, Cars.class);
        return typedQuery.getResultList();
    }

    public Cars queryFindUserById (int id) {
        System.out.println("ORMService queryFindUserById is called");
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

    public boolean updateUser(int id, boolean enabled) {
        //System.out.println("ORMService updateUser is called");

        String query= "update user set enabled = ? where iduser = ?";
        Query nativeQuery = entityManager.createNativeQuery(query);
        nativeQuery.setParameter(1, enabled);
        nativeQuery.setParameter(2, id);
        int result = nativeQuery.executeUpdate();
        return result > 0; // result show how many rows was updated.
    }

    public boolean insertUser(String username, String password, boolean enabled) {
        //System.out.println("ORMExample insertUser is called");

        String qlString = "insert into user (username,password,enabled) values (?,?,?)";
        Query query = entityManager.createNativeQuery(qlString);
        query.setParameter(1, username);
        query.setParameter(2, password);
        query.setParameter(3, enabled);
        int result = query.executeUpdate();

        return result > 0;
    }


    public boolean insertOnceUser(int iduser, boolean taxi, String carnumber, String username, String vin, String phone, String manufacture, boolean customs, String model) {

        String qlString = "INSERT INTO cars (iduser, taxi, carnumber, username, vin, phone, manufacture, customs, model) VALUES (:i,:t,:n,:u,:v,:p,:mu,:c,:mo)";
        Query query = entityManager.createNativeQuery(qlString);

        query.setParameter("i", iduser);
        query.setParameter("t", taxi);
        query.setParameter("n", carnumber);
        query.setParameter("u", username);
        query.setParameter("v", vin);
        query.setParameter("p", phone);
        query.setParameter("mu", manufacture);
        query.setParameter("c", customs);
        query.setParameter("mo", model);

        int result = query.executeUpdate();

        return result > 0;
    }

    public boolean deleteUser(int idUser) {
        //System.out.println("ORMExample deleteUser is called");

        String qlString = "delete from user where iduser=?";
        Query query = entityManager.createNativeQuery(qlString);
        query.setParameter(1, idUser);
        int result = query.executeUpdate();
        return result > 0;
    }

}
