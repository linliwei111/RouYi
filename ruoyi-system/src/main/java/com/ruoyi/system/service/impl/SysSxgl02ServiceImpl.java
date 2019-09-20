package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysSxgl02Mapper;
import com.ruoyi.system.domain.SysSxgl02;
import com.ruoyi.system.service.ISysSxgl02Service;
import com.ruoyi.common.core.text.Convert;

/**
 * 实训攻略Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Service
public class SysSxgl02ServiceImpl implements ISysSxgl02Service 
{
    @Autowired
    private SysSxgl02Mapper sysSxgl02Mapper;

    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    @Override
    public SysSxgl02 selectSysSxgl02ById(Long id)
    {
        return sysSxgl02Mapper.selectSysSxgl02ById(id);
    }

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl02 实训攻略
     * @return 实训攻略
     */
    @Override
    public List<SysSxgl02> selectSysSxgl02List(SysSxgl02 sysSxgl02)
    {
        return sysSxgl02Mapper.selectSysSxgl02List(sysSxgl02);
    }

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl02 实训攻略
     * @return 结果
     */
    @Override
    public int insertSysSxgl02(SysSxgl02 sysSxgl02)
    {
        return sysSxgl02Mapper.insertSysSxgl02(sysSxgl02);
    }

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl02 实训攻略
     * @return 结果
     */
    @Override
    public int updateSysSxgl02(SysSxgl02 sysSxgl02)
    {
        return sysSxgl02Mapper.updateSysSxgl02(sysSxgl02);
    }

    /**
     * 删除实训攻略对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysSxgl02ByIds(String ids)
    {
        return sysSxgl02Mapper.deleteSysSxgl02ByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除实训攻略信息
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxgl02ById(Long id)
    {
        return sysSxgl02Mapper.deleteSysSxgl02ById(id);
    }
}
