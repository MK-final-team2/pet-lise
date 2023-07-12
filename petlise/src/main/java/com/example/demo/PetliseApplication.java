package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.autoconfigure.security.servlet.SecurityAutoConfiguration;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@SpringBootApplication(exclude = SecurityAutoConfiguration.class)
@ComponentScan(basePackages = {"mypage", "shop", "user", "recipe", "admin", "upload"})
@MapperScan(basePackages = {"mypage", "shop", "user", "recipe", "admin"})

public class PetliseApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetliseApplication.class, args);
	}

}
