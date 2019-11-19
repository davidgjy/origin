package com.genesis.origin.web;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

/**
 * @author : KG
 * description :
 * create date : 2019/11/15 3:18 PM
 * modified by :
 */
@SpringBootApplication
@EnableSwagger2
public class OriginWebApplication {

	public static void main(String[] args) {
		SpringApplication.run(OriginWebApplication.class, args);
	}

}
