package com.huang.controller;

import com.huang.pojo.Books;
import com.huang.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/book")
public class BookController {

    private BookService bookService;

    @Autowired
    @Qualifier("bookServiceImpl")
    public void setBookService(BookService bookService) {
        this.bookService = bookService;
    }

    /**
     * 获取全部书籍
     * @param model
     * @return
     */
    @GetMapping("/allBook")
    public String list(Model model){
        List<Books> list = bookService.queryAllBook();
        model.addAttribute("list",list);
        return "allBook";
    }

    @GetMapping("/toAddBook")
    public String toAddBook(){
        return "addBook";
    }

    @PostMapping("/addBook")
    public String addBook(Books books){
        int bookID = bookService.queryMaxBookID();
        books.setBookID(bookID+1);
        bookService.addBook(books);
        return "redirect:/book/allBook";
    }

    @GetMapping("/toUpdatePage/{bookID}")
    public String toUpdatePage(Model model,@PathVariable("bookID")int bookID){
        Books books = bookService.queryBookById(bookID);
        model.addAttribute("QBook",books);
        return "updateBook";
    }

    @PostMapping("/updateBook")
    public String upDateBook(Books book,Model model){
        bookService.updateBook(book);
        return "redirect:/book/allBook";
    }

    @GetMapping("/deleteBook/{bookID}")
    public String deleteBook(@PathVariable("bookID") int bookID){
        bookService.deleteBookById(bookID);
        return "redirect:/book/allBook";
    }

    @PostMapping("/findBook")
    public String queryBookByName(Model model,String bookName){
        Books book = bookService.queryBookByName(bookName);
        List<Books> list = new ArrayList<Books>();
        list.add(book);
        if(book == null){
            list = bookService.queryAllBook();
            model.addAttribute("error","未查到该书籍！");
        }
        model.addAttribute("list",list);
        return "allBook";
    }

}
