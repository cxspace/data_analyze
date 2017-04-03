package com.data_analyze.teacher.dao;

import com.data_analyze.core.dao.BaseMapper;
import com.data_analyze.teacher.entity.Teacher;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Created by liujie on 2017/3/17.
 */
public interface TeacherMapper extends BaseMapper<Teacher> {

    public String getSalaryIdFromName(String name);

    int execute(@Param("sql") String sql);
}
