package com.coforge.employer.model;

public class Employer {
    private String name;
    private String email;
    private String company;
    private String dob;
    private String contact;

    public Employer(String name, String email, String company, String dob, String contact) {
        this.name = name;
        this.email = email;
        this.company = company;
        this.dob = dob;
        this.contact = contact;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getDob() {
        return dob;
    }

    public void setDob(String dob) {
        this.dob = dob;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }
}
