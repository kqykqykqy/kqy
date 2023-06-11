package controller;


import entity.Member;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.MemberService;

import java.util.ArrayList;
import java.util.List;

@Controller
public class WebController {
    @Autowired
    private MemberService memberService;

    @RequestMapping("/toAdd")
    public String toAdd() {
        return "add";
    }

    @RequestMapping("/toEdit")
    public ModelAndView toEdit(String uid) {
        ModelAndView modelAndView = new ModelAndView();
        Member member = memberService.searchByUid(uid);
        modelAndView.addObject("customer", member);
        modelAndView.setViewName("edit");
        return modelAndView;
    }

    @RequestMapping("/listAll")
    public ModelAndView list() {
        ModelAndView modelAndView = new ModelAndView();
        List<Member> list = memberService.list();
        modelAndView.addObject("beanList", list);
        modelAndView.setViewName("list");
        System.out.println(list.size());
        return modelAndView;
    }


    @RequestMapping("/add")
    public String add(Member member) {
        memberService.add(member);
        return "redirect:/listAll";
    }


    @RequestMapping("/edit")
    public String edit(Member member) {

        memberService.update(member);
        return "redirect:/listAll";
    }


    @RequestMapping("/delete")
    public String delete(String uid) {
        memberService.delete(uid);
        return "redirect:/listAll";
    }

    @RequestMapping("/search")
    public ModelAndView search(String number) {
        Member member = memberService.searchByNumber(number);
        ModelAndView modelAndView = new ModelAndView();
        ArrayList<Member> list = new ArrayList<>();
        list.add(member);
        modelAndView.addObject("beanList", list);
        modelAndView.setViewName("list");
        System.out.println(list.size());
        return modelAndView;
    }

}
