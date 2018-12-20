package com.twinmask.controller;

import com.github.pagehelper.PageInfo;
import com.twinmask.model.SysUser;
import com.twinmask.service.SysUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/user")
@SessionAttributes(value = "currentUser")
public class SysUserController {

    @Autowired
    SysUserService userService;

    @RequestMapping(value = "/getSysUserList")
    public String getSysUserList(@RequestParam("pageNum") int pageNum,@RequestParam("pageSize") int pageSize,ModelMap model){
        PageInfo<SysUser> pageInfo=userService.selectSysUserByPage(pageNum,pageSize);
        model.addAttribute("pageInfo",pageInfo);

        model.addAttribute("currentUser","UserSessions");
        //model.remove("currentUser");
        return "index";
    }

    @RequestMapping(value = "/deleteSysUser",method = RequestMethod.GET)
    public String deleteSysUser(@RequestParam("id") int id, Model model){
        userService.delete(id);
        return "index";
    }

    @RequestMapping(value = "/addSysUser",method = RequestMethod.POST)
    public String addSysUser(@RequestBody SysUser user) throws Exception{
        userService.add(user);
        return "addSysUser";
    }

    @RequestMapping(value = "/updateSysUser",method = RequestMethod.POST)
    public  String updateSysUser(@RequestBody SysUser user){
        userService.update(user);
        return "addSysUser";
    }

}