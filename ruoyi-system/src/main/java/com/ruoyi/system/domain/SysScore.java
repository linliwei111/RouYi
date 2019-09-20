package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 学生成绩对象 sys_score
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public class SysScore extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** null */
    @Excel(name = "null")
    private Long studentId;

    /** null */
    @Excel(name = "null")
    private String studentName;

    /** null */
    @Excel(name = "null")
    private String couseName;

    /** null */
    @Excel(name = "null")
    private Double score;

    public void setStudentId(Long studentId) 
    {
        this.studentId = studentId;
    }

    public Long getStudentId() 
    {
        return studentId;
    }
    public void setStudentName(String studentName) 
    {
        this.studentName = studentName;
    }

    public String getStudentName() 
    {
        return studentName;
    }
    public void setCouseName(String couseName) 
    {
        this.couseName = couseName;
    }

    public String getCouseName() 
    {
        return couseName;
    }
    public void setScore(Double score) 
    {
        this.score = score;
    }

    public Double getScore() 
    {
        return score;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("studentId", getStudentId())
            .append("studentName", getStudentName())
            .append("couseName", getCouseName())
            .append("score", getScore())
            .toString();
    }
}
