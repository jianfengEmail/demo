package com.twinmask.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.twinmask.dao.SysUserMapper;
import com.twinmask.model.SysUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysUserService {

    @Autowired
    SysUserMapper serverDao;

    public List<SysUser> selectAllBooks(){
        return serverDao.selectSysUserAll();
    }

    public PageInfo<SysUser> selectSysUserByPage(int pageNum, int pageSize) {
        PageHelper.startPage(1, 10);
        //startPage后紧跟的这个查询就是分页查询，必须紧跟
        List<SysUser> list = serverDao.selectSysUserAll();
        PageInfo<SysUser> pageInfo = new PageInfo<SysUser>(list);
        return pageInfo;
    }

    public SysUser getUserById(int id){
        return serverDao.selectByPrimaryKey(id);
    }

    public int add(SysUser model) throws Exception{
        if (model.getUserName() == null){
            throw new Exception("用户名不能为空.");
        }
        if (model.getUserName().trim().length()<6){
            throw new Exception("用户名长度不能小于六位数.");
        }
        if (model.getPassword() == null || model.getPassword().trim().equals("")){
            throw new Exception("密码不能为空.");
        }
        return serverDao.insert(model);
    }

    public int delete(int id){
        return  serverDao.deleteByPrimaryKey(id);
    }

    public int delete(String[] ids){
        int rows = 0;
        for (String idStr : ids) {
            int id = Integer.valueOf(idStr);
            rows += delete(id);
        }
        return rows;
    }

    public int update(SysUser model){
        return serverDao.updateByPrimaryKey(model);
    }
}
