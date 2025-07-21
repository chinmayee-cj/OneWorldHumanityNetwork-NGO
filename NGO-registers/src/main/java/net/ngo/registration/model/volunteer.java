package net.ngo.registration.model;

import java.io.Serializable;

/**
 * JavaBean class used for volunteer actions.
 */
public class volunteer implements Serializable {
    private static final long serialVersionUID = 1L;

    private String firstName;
    private String lastName;
    private String userName;
    private String email;
    private String password;
    private String address;
    private String contact;

    public String getFirstName() {
        return firstName;
    }
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }
    public String getLastName() {
        return lastName;
    }
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }
    public String getUserName() {
        return userName;
    }
    public void setUserName(String userName) {
        this.userName = userName;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public String getAddress() {
        return address;
    }
    public void setAddress(String address) {
        this.address = address;
    }
    public String getContact() {
        return contact;
    }
    public void setContact(String contact) {
        this.contact = contact;
    }
    public class ConnectionEntry {
        private String username;
        private String review;

        public ConnectionEntry(String username, String review) {
            this.username = username;
            this.review = review;
        }
        public String getUsername() { return username; }
        public String getReview() { return review; }
    }
}
/*
 * © 2025 Chinmayee C J. All rights reserved.
 * Unauthorized copying, distribution, or modification of this file is strictly prohibited.
 */
