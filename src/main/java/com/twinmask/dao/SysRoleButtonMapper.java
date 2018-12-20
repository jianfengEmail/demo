package com.twinmask.dao;

import com.twinmask.model.SysRoleButton;

public interface SysRoleButtonMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(SysRoleButton record);

    int insertSelective(SysRoleButton record);

    SysRoleButton selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(SysRoleButton record);

    int updateByPrimaryKey(SysRoleButton record);
}