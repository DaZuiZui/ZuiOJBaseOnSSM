package com.huang.service;

import com.huang.pojo.Books;

import java.util.List;

public interface BookService {

    int addBook(Books books);

    int deleteBookById(int id);

    int updateBook(Books books);

    int queryMaxBookID();

    Books queryBookById(int id);

    List<Books> queryAllBook();

    Books queryBookByName(String bookName);
}
