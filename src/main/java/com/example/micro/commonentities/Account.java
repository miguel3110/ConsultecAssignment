package com.example.micro.commonentities;


import javax.persistence.*;

@Entity
@Table(name = "accounts")
@NamedStoredProcedureQueries(value = {
        @NamedStoredProcedureQuery(name = "AllSavings", procedureName = "GetAllSavingsAccount"),
        @NamedStoredProcedureQuery(name = "AllCurrent", procedureName = "GetAllCurrentAccounts")
})
public class Account {
    @Id
    private int id;
    private String name;
    private String accountNumber;
    private double balance;

    public Account(int id, String name, String accountNumber, double balance) {
        this.id = id;
        this.name = name;
        this.accountNumber = accountNumber;
        this.balance = balance;
    }

    public Account() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAccountNumber() {
        return accountNumber;
    }

    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }

    public double getBalance() {
        return balance;
    }

    public void setBalance(double balance) {
        this.balance = balance;
    }

    @Override
    public String toString() {
        return "Name= " + name + " , AccountNumber= " + accountNumber + ", Balance= " + balance + "]";


    }
}
