package com.example.micro.interfaces;

import com.example.micro.commonentities.Account;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;

@FeignClient(name="deposit", url="localhost:8081/deposit-account")
public interface DepositClient {
    @GetMapping(value= "/current")
    public Iterable<Account> getAllCurrentAccounts();

    @GetMapping(value="/saving")
    public Iterable<Account> getAllSavingsAccounts();
}
