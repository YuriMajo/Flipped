package com.now.flipped.main;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableEurekaClient
public class FlippedMainApplication {
    public static void main(String[] args) {
        SpringApplication.run(FlippedMainApplication.class);
    }
}
