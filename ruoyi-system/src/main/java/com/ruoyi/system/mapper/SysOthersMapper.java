package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysOthers;
import java.util.List;

/**
 * 其他任务Mapper接口
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
public interface SysOthersMapper 
{
    /**
     * 查询其他任务
     * 
     * @param id 其他任务ID
     * @return 其他任务
     */
    public SysOthers selectSysOthersById(Long id);

    /**
     * 查询其他任务列表
     * 
     * @param sysOthers 其他任务
     * @return 其他任务集合
     */
    public List<SysOthers> selectSysOthersList(SysOthers sysOthers);

    /**
     * 新增其他任务
     * 
     * @param sysOthers 其他任务
     * @return 结果
     */
    public int insertSysOthers(SysOthers sysOthers);

    /**
     * 修改其他任务
     * 
     * @param sysOthers 其他任务
     * @return 结果
     */
    public int updateSysOthers(SysOthers sysOthers);

    /**
     * 删除其他任务
     * 
     * @param id 其他任务ID
     * @return 结果
     */
    public int deleteSysOthersById(Long id);

    /**
     * 批量删除其他任务
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysOthersByIds(String[] ids);
}
