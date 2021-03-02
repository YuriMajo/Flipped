package com.now.springcloud.flipped.ribbon.server.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;

@RestController
@RequestMapping("/main")
public class MainController {
    @Autowired
    private RestTemplate restTemplate;

    /**
     * 面向服务器调用
     * @return
     */
    @GetMapping("/login")
    public String helloConsumer() {
        return restTemplate.getForEntity("http://flipped-main/login", String.class).getBody();
    }
}
