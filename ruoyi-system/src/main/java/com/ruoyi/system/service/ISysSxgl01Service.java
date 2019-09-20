package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysSxgl01;
import java.util.List;

/**
 * 实训攻略Service接口
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public interface ISysSxgl01Service 
{
    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    public SysSxgl01 selectSysSxgl01ById(Long id);

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl01 实训攻略
     * @return 实训攻略集合
     */
    public List<SysSxgl01> selectSysSxgl01List(SysSxgl01 sysSxgl01);

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl01 实训攻略
     * @return 结果
     */
    public int insertSysSxgl01(SysSxgl01 sysSxgl01);

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl01 实训攻略
     * @return 结果
     */
    public int updateSysSxgl01(SysSxgl01 sysSxgl01);

    /**
     * 批量删除实训攻略
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysSxgl01ByIds(String ids);

    /**
     * 删除实训攻略信息
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxgl01ById(Long id);
}
