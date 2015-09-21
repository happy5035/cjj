package com.yuan.lee.dao;

import com.yuan.lee.common.BaseMapper;
import com.yuan.lee.common.MyBatisRepository;
import com.yuan.lee.entity.Student;
@MyBatisRepository
public interface StudentMapper extends BaseMapper<Student>{
    int deleteByPrimaryKey(String firstname);

    int insert(Student record);

    int insertSelective(Student record);

    Student selectByPrimaryKey(String firstname);

    int updateByPrimaryKeySelective(Student record);

    int updateByPrimaryKey(Student record);
}