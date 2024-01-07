package com.khit.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

   @RequestMapping("/")
   public String index() {
      return "index"; 
   }
   
   @RequestMapping("/main")
   public String main() {
	   return "main"; 
   }
   
//   @GetMapping("/global_error")
//   public String error() {
//	   return "/exception/global_error";
//   }
   
}