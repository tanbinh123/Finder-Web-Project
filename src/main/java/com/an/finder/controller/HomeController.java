package com.an.finder.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
    @GetMapping("/")
    public String login(){
        return "login";
    }

    @GetMapping("/home")
    public String home(){
        return "home";
    }

    @GetMapping("/admin")
    public String admin(){
        return "admin";
    }

    @GetMapping("/message")
    public String message(){
        return "message";
    }

    @GetMapping("/discover")
    public String discover(){
        return "discover";
    }

    @GetMapping("/match")
    public String match(){
        return "match";
    }

    @GetMapping("/profile")
    public String profile(){
        return "/profile/profile";
    }

    @GetMapping("/edit")
    public String edit_profile(){
        return "/profile/edit-profile";
    }

    @GetMapping("/fristlogin")
    public String fristLogin(){
        return "/frist-login";
    }
}
