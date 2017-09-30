package ru.mishost.InformationPortalAboutCars.mvc.bean;

import org.hibernate.validator.constraints.NotEmpty;

import javax.persistence.*;
import javax.validation.constraints.Size;

/**
 * Created for mishost.ru on 26.06.2017.
 */
@Entity
@Table(name ="\"siteuser\"")
public class User {

    @Id
    @NotEmpty
    @Size(min = 5, max = 20)
    @Column(name = "username")
    private String username;

    @NotEmpty
    @Size(min=5, max=20)
    @Column(name="password")
    private String password;

    @Column(name="enabled")
    private boolean enabled;

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public boolean isEnabled() {
        return enabled;
    }

    public void setEnabled(boolean enabled) {
        this.enabled = enabled;
    }

    @Override
    public String toString() {
        return "User{" +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", enabled=" + enabled +
                '}';
    }
}
