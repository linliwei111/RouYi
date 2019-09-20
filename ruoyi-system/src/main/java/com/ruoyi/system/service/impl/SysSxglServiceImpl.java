package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysSxglMapper;
import com.ruoyi.system.domain.SysSxgl;
import com.ruoyi.system.service.ISysSxglService;
import com.ruoyi.common.core.text.Convert;

/**
 * 实训攻略Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Service
public class SysSxglServiceImpl implements ISysSxglService 
{
    @Autowired
    private SysSxglMapper sysSxglMapper;

    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    @Override
    public SysSxgl selectSysSxglById(Long id)
    {
        return sysSxglMapper.selectSysSxglById(id);
    }

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl 实训攻略
     * @return 实训攻略
     */
    @Override
    public List<SysSxgl> selectSysSxglList(SysSxgl sysSxgl)
    {
        return sysSxglMapper.selectSysSxglList(sysSxgl);
    }

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl 实训攻略
     * @return 结果
     */
    @Override
    public int insertSysSxgl(SysSxgl sysSxgl)
    {
        return sysSxglMapper.insertSysSxgl(sysSxgl);
    }

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl 实训攻略
     * @return 结果
     */
    @Override
    public int updateSysSxgl(SysSxgl sysSxgl)
    {
        return sysSxglMapper.updateSysSxgl(sysSxgl);
    }

    /**
     * 删除实训攻略对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysSxglByIds(String ids)
    {
        return sysSxglMapper.deleteSysSxglByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除实训攻略信息
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxglById(Long id)
    {
        return sysSxglMapper.deleteSysSxglById(id);
    }
}
