package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysSxgl03;
import java.util.List;

/**
 * 实训攻略Mapper接口
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public interface SysSxgl03Mapper 
{
    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    public SysSxgl03 selectSysSxgl03ById(Long id);

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl03 实训攻略
     * @return 实训攻略集合
     */
    public List<SysSxgl03> selectSysSxgl03List(SysSxgl03 sysSxgl03);

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl03 实训攻略
     * @return 结果
     */
    public int insertSysSxgl03(SysSxgl03 sysSxgl03);

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl03 实训攻略
     * @return 结果
     */
    public int updateSysSxgl03(SysSxgl03 sysSxgl03);

    /**
     * 删除实训攻略
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxgl03ById(Long id);

    /**
     * 批量删除实训攻略
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysSxgl03ByIds(String[] ids);
}
