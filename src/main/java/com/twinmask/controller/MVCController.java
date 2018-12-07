package com.twinmask.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/mvc")
public class MVCController {

    @RequestMapping(value = "/hello")
    public String hello(){
        //使用sout可以快速补全System.out.println
        System.out.println("进来了");
        return "index";
    }
}
