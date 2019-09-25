package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 趣味知识对象 sys_newmessage
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
public class SysNewmessage extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Long id;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String 名称;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String 内容;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String 链接;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void set名称(String 名称) 
    {
        this.名称 = 名称;
    }

    public String get名称() 
    {
        return 名称;
    }
    public void set内容(String 内容) 
    {
        this.内容 = 内容;
    }

    public String get内容() 
    {
        return 内容;
    }
    public void set链接(String 链接) 
    {
        this.链接 = 链接;
    }

    public String get链接() 
    {
        return 链接;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("名称", get名称())
            .append("内容", get内容())
            .append("链接", get链接())
            .toString();
    }
}
