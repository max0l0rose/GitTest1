package com.example.gittest1;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ResponseBody;


// 6


@SpringBootApplication
@Controller
public class GitTest1Application {

	@GetMapping()
	@ResponseBody
	String f() {
		return "qqqqqqq";
	}

	public static void main(String[] args) {
		SpringApplication.run(GitTest1Application.class, args);
	}

}
