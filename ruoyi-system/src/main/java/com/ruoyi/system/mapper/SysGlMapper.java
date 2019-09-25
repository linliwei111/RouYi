package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysGl;
import java.util.List;

/**
 * 项目攻略Mapper接口
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
public interface SysGlMapper 
{
    /**
     * 查询项目攻略
     * 
     * @param id 项目攻略ID
     * @return 项目攻略
     */
    public SysGl selectSysGlById(Long id);

    /**
     * 查询项目攻略列表
     * 
     * @param sysGl 项目攻略
     * @return 项目攻略集合
     */
    public List<SysGl> selectSysGlList(SysGl sysGl);

    /**
     * 新增项目攻略
     * 
     * @param sysGl 项目攻略
     * @return 结果
     */
    public int insertSysGl(SysGl sysGl);

    /**
     * 修改项目攻略
     * 
     * @param sysGl 项目攻略
     * @return 结果
     */
    public int updateSysGl(SysGl sysGl);

    /**
     * 删除项目攻略
     * 
     * @param id 项目攻略ID
     * @return 结果
     */
    public int deleteSysGlById(Long id);

    /**
     * 批量删除项目攻略
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysGlByIds(String[] ids);
}
