package com.example.lastDemo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/member")
public class MemberController {

    @Autowired
    private MemberService memberService;

    // 로그인
    @GetMapping("/login")
    public String login() {
        return "login";
    }
    // 회원가입 작성 전
    @GetMapping("/join")
    public String join() {
        return "signup";
    }
    // 회원가입 작성 후 --> welcome
    @PostMapping("/join")
    public String joined(Member member, Model model) {
        memberService.save(member);
        return "welcome";
    }
    // 마이페이지
    @PostMapping("/mypage")
    public String mypage() {
        return "mypage";
    }
    // 환영페이지
    @PostMapping("/welcome")
    public String welcome() {
        return "welcome";
    }
}
