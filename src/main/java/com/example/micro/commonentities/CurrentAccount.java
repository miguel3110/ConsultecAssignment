package com.example.micro.commonentities;

public class CurrentAccount extends Account {
    boolean isMoneyMarket;

    public CurrentAccount(int id, String name, String accountNumber, double balance, boolean isMoneyMarket) {
        super(id, name, accountNumber, balance);
        this.isMoneyMarket = isMoneyMarket;
    }

    public CurrentAccount(boolean isMoneyMarket) {
        this.isMoneyMarket = isMoneyMarket;
    }
}
