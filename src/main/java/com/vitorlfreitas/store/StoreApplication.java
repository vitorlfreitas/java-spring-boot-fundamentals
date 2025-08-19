package com.vitorlfreitas.store;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.ApplicationContext;

@SpringBootApplication
public class StoreApplication {

	public static void main(String[] args) {

		ApplicationContext context = SpringApplication.run(StoreApplication.class, args);


		// Run the application with the code below commented, then uncomment the code and try again

//		var orderService = context.getBean(HeavyResource.class);

		// You will notice the component is created only when needed

	}

}
