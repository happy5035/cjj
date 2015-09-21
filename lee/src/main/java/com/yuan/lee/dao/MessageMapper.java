package com.yuan.lee.dao;

import com.yuan.lee.common.BaseMapper;
import com.yuan.lee.common.MyBatisRepository;
import com.yuan.lee.entity.Message;
@MyBatisRepository
public interface MessageMapper extends BaseMapper<Message>{
    int deleteByPrimaryKey(String country);

    int insert(Message record);

    int insertSelective(Message record);

    Message selectByPrimaryKey(String country);

    int updateByPrimaryKeySelective(Message record);

    int updateByPrimaryKey(Message record);
}