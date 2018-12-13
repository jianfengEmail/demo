package com.twinmask.dao;

import com.twinmask.entity.Books2;

public interface Books2Mapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Books2 record);

    int insertSelective(Books2 record);

    Books2 selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Books2 record);

    int updateByPrimaryKey(Books2 record);
}