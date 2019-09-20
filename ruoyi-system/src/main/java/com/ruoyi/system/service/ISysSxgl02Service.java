package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysSxgl02;
import java.util.List;

/**
 * 实训攻略Service接口
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public interface ISysSxgl02Service 
{
    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    public SysSxgl02 selectSysSxgl02ById(Long id);

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl02 实训攻略
     * @return 实训攻略集合
     */
    public List<SysSxgl02> selectSysSxgl02List(SysSxgl02 sysSxgl02);

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl02 实训攻略
     * @return 结果
     */
    public int insertSysSxgl02(SysSxgl02 sysSxgl02);

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl02 实训攻略
     * @return 结果
     */
    public int updateSysSxgl02(SysSxgl02 sysSxgl02);

    /**
     * 批量删除实训攻略
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysSxgl02ByIds(String ids);

    /**
     * 删除实训攻略信息
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxgl02ById(Long id);
}
