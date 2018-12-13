package com.twinmask.dao;

import com.twinmask.entity.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    public List<Book> getAllBooks();

    public Book getBookById(@Param("id")int id);

    public int add(Book book);

    public int delete(int id);

    public int update(Book book);
}
