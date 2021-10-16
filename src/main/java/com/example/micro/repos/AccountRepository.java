package com.example.micro.repos;

import com.example.micro.commonentities.Account;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;

@Repository
public class AccountRepository {
    @Autowired
    private EntityManager entityManager;

    public Iterable<Account> getAllSavingsAccounts()
    {
        return entityManager.createNamedStoredProcedureQuery("AllSavings").getResultList();
    }

    public Iterable<Account> getAllCurrentAccounts ()
    {
        return entityManager.createNamedStoredProcedureQuery("AllCurrent").getResultList();
    }
}
