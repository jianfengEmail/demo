package com.twinmask.controller;

import com.twinmask.model.Book;
import com.twinmask.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Controller
@RequestMapping(value = "/book")
@SessionAttributes(value = "currentUser")
public class BookController {

    @Autowired
    BookService bookService;

    @RequestMapping(value = "/getBookList")
    public String getBookList(ModelMap model){
        List<Book> bookList=bookService.getAllBooks();
        model.addAttribute("bookList",bookList);

        //redirect:
        model.addAttribute("currentUser","UserSessions");
        //model.remove("currentUser");
        return "index";
    }

    @RequestMapping(value = "/deleteBook",method = RequestMethod.GET)
    public String deleteBook(@RequestParam("id") int id, Model model){
        bookService.delete(id);
        return "index";
    }

    @RequestMapping(value = "/addBook",method = RequestMethod.POST)
    public String addBook(@RequestBody Book book) throws Exception{
        bookService.add(book);
        return "addBook";
    }

    @RequestMapping(value = "/updateBook",method = RequestMethod.POST)
    public  String updateBook(@RequestBody Book book){
        bookService.update(book);
        return "addBook";
    }

}
