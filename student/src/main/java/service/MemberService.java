package service;


import entity.Member;

import java.util.List;

public interface MemberService {
    List<Member> list();

    void add(Member member);

    void delete(String uid);

    void update(Member member);

    Member searchByUid(String uid);

    Member searchByNumber(String number);

}
