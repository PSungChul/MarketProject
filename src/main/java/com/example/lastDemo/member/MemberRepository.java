package com.example.lastDemo.member;

import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.Map;

@Repository
public class MemberRepository {

    private Map<String, Member> db = new HashMap<>();

    public Member save(Member member) {
        db.put(member.getId(), member);
        return db.get(member.getId());
    }
}
