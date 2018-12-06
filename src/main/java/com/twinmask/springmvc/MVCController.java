package com.twinmask.springmvc;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/mvc")
public class MVCController {

    @RequestMapping(value = "/hello")
    public String hello(){
        System.out.println("进来了");
        System.out.println("测试一下 Git");
        System.out.println("哈哈 我又测试一下");
        return "index";
    }
}
