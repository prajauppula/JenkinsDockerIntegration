package com.example.demo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class HelloWorldrestController {

	@GetMapping("/welcome")
	public String sayHello() {
		return "Hello Mr.. Welcome to Jenkons Docker Integration Project....";
	}
}
