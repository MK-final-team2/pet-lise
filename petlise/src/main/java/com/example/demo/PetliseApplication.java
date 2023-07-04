package com.example.demo;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = {"mypage", "shop", "user"})
@MapperScan(basePackages = {"user"})
public class PetliseApplication {

	public static void main(String[] args) {
		SpringApplication.run(PetliseApplication.class, args);
	}

}
