package com.twinmask.dao;

import com.twinmask.model.SysMenuButton;

public interface SysMenuButtonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysMenuButton record);

    int insertSelective(SysMenuButton record);

    SysMenuButton selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysMenuButton record);

    int updateByPrimaryKey(SysMenuButton record);
}