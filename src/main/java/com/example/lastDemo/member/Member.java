package com.example.lastDemo.member;

import lombok.AllArgsConstructor;
import lombok.Getter;

/*
* Member 객체 : Entity & DTO 같이 하고 있다.
* 회원의 정보 : id, name, pw
*/
// @AllArgsConstructor // 생성자 어노테이션
// @Getter // getter 어노테이션
public class Member {
    // 변수
    // @Id : 기본키(PK) 설정 어노테이션 - jdbc가 들고있다.
    private String id;
    private String name;
    private String pw;
    // 생성자 매개변수
    public Member(String id, String name, String pw) {
        this.id = id;
        this.name = name;
        this.pw = pw;
    }
    // getter
    public String getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getPw() {
        return pw;
    }
}
