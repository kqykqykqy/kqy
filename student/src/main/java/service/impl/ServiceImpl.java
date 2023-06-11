package service.impl;


import dao.MemberDao;
import entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import service.MemberService;

import java.util.List;
import java.util.UUID;

@Service
public class ServiceImpl implements MemberService {
    @Autowired
    private MemberDao memberDao;

    @Override
    public List<Member> list() {
        return memberDao.list();
    }

    @Override
    public void add(Member member) {
        member.setUid(UUID.randomUUID().toString());
        memberDao.add(member);
    }

    @Override
    public void delete(String uid) {
        memberDao.delete(uid);
    }

    @Override
    public void update(Member member) {
        memberDao.update(member);
    }

    @Override
    public Member searchByUid(String uid) {
        return memberDao.searchByUid(uid);
    }

    @Override
    public Member searchByNumber(String number) {
        return memberDao.searchByNumber(number);
    }

}
