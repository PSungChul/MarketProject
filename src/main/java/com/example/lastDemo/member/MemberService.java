package com.example.lastDemo.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberService {

    @Autowired
    private MemberRepository memberRepository;

    public Member save(Member member) {
        return memberRepository.save(member);
    }
}
