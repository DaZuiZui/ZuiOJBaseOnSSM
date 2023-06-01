package com.huang.dao;

import com.huang.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface BookMapper {

    int addBook(Books books);

    int deleteBookById(@Param("bookID") int id);

    int updateBook(Books books);

    int queryMaxBookID();

    Books queryBookById(@Param("bookID") int id);

    List<Books> queryAllBook();

    Books queryBookByName(@Param("bookName") String bookName);

}
