package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysSxgl03Mapper;
import com.ruoyi.system.domain.SysSxgl03;
import com.ruoyi.system.service.ISysSxgl03Service;
import com.ruoyi.common.core.text.Convert;

/**
 * 实训攻略Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Service
public class SysSxgl03ServiceImpl implements ISysSxgl03Service 
{
    @Autowired
    private SysSxgl03Mapper sysSxgl03Mapper;

    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    @Override
    public SysSxgl03 selectSysSxgl03ById(Long id)
    {
        return sysSxgl03Mapper.selectSysSxgl03ById(id);
    }

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl03 实训攻略
     * @return 实训攻略
     */
    @Override
    public List<SysSxgl03> selectSysSxgl03List(SysSxgl03 sysSxgl03)
    {
        return sysSxgl03Mapper.selectSysSxgl03List(sysSxgl03);
    }

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl03 实训攻略
     * @return 结果
     */
    @Override
    public int insertSysSxgl03(SysSxgl03 sysSxgl03)
    {
        return sysSxgl03Mapper.insertSysSxgl03(sysSxgl03);
    }

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl03 实训攻略
     * @return 结果
     */
    @Override
    public int updateSysSxgl03(SysSxgl03 sysSxgl03)
    {
        return sysSxgl03Mapper.updateSysSxgl03(sysSxgl03);
    }

    /**
     * 删除实训攻略对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysSxgl03ByIds(String ids)
    {
        return sysSxgl03Mapper.deleteSysSxgl03ByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除实训攻略信息
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxgl03ById(Long id)
    {
        return sysSxgl03Mapper.deleteSysSxgl03ById(id);
    }
}
