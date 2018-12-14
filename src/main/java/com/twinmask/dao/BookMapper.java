package com.twinmask.dao;

import com.twinmask.model.Book;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    List<Book> getAllBooks();

    Book getBookById(@Param("id")int id);

    int add(Book book);

    int delete(int id);

    int update(Book book);
}
