package com.example.micro.controllers;

import com.example.micro.commonentities.Account;
import com.example.micro.repos.AccountRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/deposit-account")
public class AccountsController {
    @Autowired
    private AccountRepository accountRepository;

    @GetMapping("/current")
    public Iterable<Account> getAllCurrentAccounts() {
        return accountRepository.getAllCurrentAccounts();
    }

    @GetMapping("/saving")
    public Iterable<Account> getAllSavingsAccounts() {
        return accountRepository.getAllSavingsAccounts();


    }
}
