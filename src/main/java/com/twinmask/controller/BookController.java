package com.twinmask.controller;

import com.twinmask.entity.Book;
import com.twinmask.service.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.util.List;

@Controller
@RequestMapping(value = "/book")
@SessionAttributes(value = "currentUser")
public class BookController {

    @Resource
    BookService bookService;

    @RequestMapping(value = "/getBookList")
    public String getBookList(Model model){
        List<Book> bookList=bookService.getAllBooks();
        model.addAttribute("bookList",bookList);

        //redirect:
        model.addAttribute("currentUser","user");
        model.addAttribute("currentUser",null);
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
