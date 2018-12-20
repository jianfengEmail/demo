package com.twinmask.service;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.twinmask.dao.SysMenuMapper;
import com.twinmask.dao.SysMenuMapper;
import com.twinmask.model.SysMenu;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class SysMenuService {

    @Autowired
    SysMenuMapper serverDao;

    public List<SysMenu> selectAllBooks(){
        return serverDao.selectSysMenuAll();
    }

    public PageInfo<SysMenu> selectSysMenuByPage(int pageNum, int pageSize) {
        PageHelper.startPage(1, 10);
        //startPage后紧跟的这个查询就是分页查询，必须紧跟
        List<SysMenu> list = serverDao.selectSysMenuAll();
        PageInfo<SysMenu> pageInfo = new PageInfo<SysMenu>(list);
        return pageInfo;
    }

    public SysMenu getUserById(int id){
        return serverDao.selectByPrimaryKey(id);
    }

    public int add(SysMenu model){
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

    public int update(SysMenu model){
        return serverDao.updateByPrimaryKey(model);
    }
}
