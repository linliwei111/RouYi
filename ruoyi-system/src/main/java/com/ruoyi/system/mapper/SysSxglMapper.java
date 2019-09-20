package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysSxgl;
import java.util.List;

/**
 * 实训攻略Mapper接口
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public interface SysSxglMapper 
{
    /**
     * 查询实训攻略
     * 
     * @param id 实训攻略ID
     * @return 实训攻略
     */
    public SysSxgl selectSysSxglById(Long id);

    /**
     * 查询实训攻略列表
     * 
     * @param sysSxgl 实训攻略
     * @return 实训攻略集合
     */
    public List<SysSxgl> selectSysSxglList(SysSxgl sysSxgl);

    /**
     * 新增实训攻略
     * 
     * @param sysSxgl 实训攻略
     * @return 结果
     */
    public int insertSysSxgl(SysSxgl sysSxgl);

    /**
     * 修改实训攻略
     * 
     * @param sysSxgl 实训攻略
     * @return 结果
     */
    public int updateSysSxgl(SysSxgl sysSxgl);

    /**
     * 删除实训攻略
     * 
     * @param id 实训攻略ID
     * @return 结果
     */
    public int deleteSysSxglById(Long id);

    /**
     * 批量删除实训攻略
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysSxglByIds(String[] ids);
}
