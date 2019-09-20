package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysSxgl01Mapper;
import com.ruoyi.system.domain.SysSxgl01;
import com.ruoyi.system.service.ISysSxgl01Service;
import com.ruoyi.common.core.text.Convert;

/**
 * 实训攻略Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Service
public class SysSxgl01ServiceImpl implements ISysSxgl01Service 
{
    @Autowired
    private SysSxgl01Mapper sysSxgl01Mapper;

    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    @Override
    public SysSxgl01 selectSysSxgl01ById(Long id)
    {
        return sysSxgl01Mapper.selectSysSxgl01ById(id);
    }

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl01 实训攻略
     * @return 实训攻略
     */
    @Override
    public List<SysSxgl01> selectSysSxgl01List(SysSxgl01 sysSxgl01)
    {
        return sysSxgl01Mapper.selectSysSxgl01List(sysSxgl01);
    }

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl01 实训攻略
     * @return 结果
     */
    @Override
    public int insertSysSxgl01(SysSxgl01 sysSxgl01)
    {
        return sysSxgl01Mapper.insertSysSxgl01(sysSxgl01);
    }

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl01 实训攻略
     * @return 结果
     */
    @Override
    public int updateSysSxgl01(SysSxgl01 sysSxgl01)
    {
        return sysSxgl01Mapper.updateSysSxgl01(sysSxgl01);
    }

    /**
     * 删除实训攻略对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysSxgl01ByIds(String ids)
    {
        return sysSxgl01Mapper.deleteSysSxgl01ByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除实训攻略信息
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxgl01ById(Long id)
    {
        return sysSxgl01Mapper.deleteSysSxgl01ById(id);
    }
}
