package ru.mishost.InformationPortalAboutCars.mvc.bean;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;

/**
 * Created for mzakharov on 25.05.2017.
 */
@Entity
@Table(name="\"cars\"")
public class Cars {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "iduser")
    private int idUser;

    @NotEmpty
    @Size(min = 5, max = 40)
    @Column(name = "username")
    private String username;

    @Size(min=5, max=20)
    @Column(name="carnumber")
    private String carnumber;

    @Size(min=10, max=12)
    @Column(name="phone")
    private String phone;

    @Size(min=5, max=20)
    @Column(name="vin")
    private String vin;

    @Column(name="taxi")
    private boolean taxi;

    @Column(name="model")
    private String model;

    @Size(max=50)
    @Column(name="manufacture")
    private String manufacture;

    public int getIdUser() {
        return idUser;
    }

    public void setIdUser(int idUser) {
        this.idUser = idUser;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getCarnumber() {
        return carnumber;
    }

    public void setCarnumber(String carnumber) {
        this.carnumber = carnumber;
    }

    public boolean isTaxi() {
        return taxi;
    }

    public void setTaxi(boolean taxi) {
        this.taxi = taxi;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getVin() {
        return vin;
    }

    public void setVin(String vin) {
        this.vin = vin;
    }

    public String getManufacture() {
        return manufacture;
    }

    public void setManufacture(String manufacture) {
        this.manufacture = manufacture;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    @Override
    public String toString() {
        String useTaxi;
        if(taxi){
            useTaxi = "Использовался в такси";
        }else{
            useTaxi = "Не использовался в такси";
        }
        return  "Номер = " + carnumber + System.lineSeparator() +
                ", Модель = '" + model + '\'' + System.lineSeparator() +
                ", Владелец = '" + username + '\'' + System.lineSeparator() +
                ", Телефон = '" + phone + '\'' + System.lineSeparator() +
                ", VIN = '" + vin + '\'' + System.lineSeparator() +
                ", Год производства = '" + manufacture + '\'' + System.lineSeparator() +
                ", " + useTaxi;
    }
}
