package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"mypage", "shop"})
@MapperScan(basePackages = {"mypage", "shop", "shop.editProduct","shop.admin"})
@ComponentScan(basePackages = {"shop.editProduct","shop.admin"})
public class PetliseApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetliseApplication.class, args);
	}

}
