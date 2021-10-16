package com.example.micro.commonentities;

public class SavingAccount extends Account {
    boolean isChristmasAccount;

    public SavingAccount(int id, String name, String accountNumber, double balance, boolean isChristmasAccount) {
        super(id, name, accountNumber, balance);
        this.isChristmasAccount = isChristmasAccount;
    }

    public SavingAccount(boolean isChristmasAccount) {
        this.isChristmasAccount = isChristmasAccount;
    }
}
