package com.example.micro;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@SpringBootApplication
@EnableFeignClients
public class StoreProcedureApplication {

    public static void main(String[] args) {
        SpringApplication.run(StoreProcedureApplication.class, args);
    }

}
