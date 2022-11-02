package com.example.lastDemo.member;

import static org.springframework.beans.BeanUtils.copyProperties;

public class MemberDto {

    private String id;
    private String name;
    private String pw;

    MemberDto(Member source) {
        copyProperties(source, this); // 객체 복사
    }
}
