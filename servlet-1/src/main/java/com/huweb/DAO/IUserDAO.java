package com.huweb.DAO;

import com.huweb.entity.User;

public interface IUserDAO {
    public abstract boolean deleteuser(User user)throws Exception;
    public abstract boolean registeruser(User user)throws Exception;
    public abstract User getuser(User user)throws Exception;
}
