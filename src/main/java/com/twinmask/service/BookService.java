package com.twinmask.service;

import com.twinmask.dao.BookMapper;
import com.twinmask.entity.Book;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class BookService {

    @Autowired
    BookMapper bookDao;

    public List<Book> getAllBooks(){
        return bookDao.getAllBooks();
    }

    public Book getBookById(int id){
        return bookDao.getBookById(id);
    }

    public int add(Book book) throws Exception{
        if (book.getTitle() == null || book.getTitle().equals("")){
            throw new Exception("书名不能为空");
        }
        return bookDao.add(book);
    }

    @Transactional
    public int add(Book book1,Book book2){
        int rows = 0;
        rows = bookDao.add(book1);
        rows += bookDao.add(book2);
        return rows;
    }

    public int delete(int id){
        return  bookDao.delete(id);
    }

    public int delete(String[] ids){
        int rows = 0;
        for (String idStr : ids) {
            int id = Integer.valueOf(idStr);
            rows += delete(id);
        }
        return rows;
    }

    public int update(Book book){
        return bookDao.update(book);
    }
}
