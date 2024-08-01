package com.satyendra.document;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;

@SpringBootApplication
public class DocumentWebApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(DocumentWebApplication.class, args);
	}

}
