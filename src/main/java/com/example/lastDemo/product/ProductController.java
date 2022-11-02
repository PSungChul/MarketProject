package com.example.lastDemo.product;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/product")
public class ProductController {
    // 메인페이지 get - 로그인 전
    @GetMapping
    public String main() {
        return "main";
    }
    // 메인페이지 post - 로그인 후
    @PostMapping
    public String logonmain() {
        return "main";
    }
    // 상품조회
    @GetMapping("/search")
    public String search() {
        return "search";
    }
}
