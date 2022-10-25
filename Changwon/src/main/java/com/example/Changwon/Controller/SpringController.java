package com.example.Changwon.Controller;



import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
public class SpringController {

	// 메인홈페이지
	@GetMapping("/")
	public String main() {
		System.out.println("main으로 넘어왔다");
		return "Main";
	}
	
	@RequestMapping("/searching")
	public String searching() {
		return "Map/searching";
	}
}