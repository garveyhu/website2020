package com.huweb.DAO;

import com.huweb.entity.Book;

public interface IBookDAO {
    public abstract boolean m_addbook(Book book)throws Exception;
    public abstract boolean m_deletebook(Book book)throws Exception;
    public abstract boolean m_changebook(Book book)throws Exception;
    public abstract boolean borrowbook(Book book)throws Exception;
    public abstract boolean returnbook(Book book)throws Exception;
    public abstract Book querybook(Book book)throws Exception;
}
