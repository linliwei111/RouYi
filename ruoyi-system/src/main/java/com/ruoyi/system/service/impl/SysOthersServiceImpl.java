package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysOthersMapper;
import com.ruoyi.system.domain.SysOthers;
import com.ruoyi.system.service.ISysOthersService;
import com.ruoyi.common.core.text.Convert;

/**
 * 其他任务Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
@Service
public class SysOthersServiceImpl implements ISysOthersService 
{
    @Autowired
    private SysOthersMapper sysOthersMapper;

    /**
     * 查询其他任务
     * 
     * @param id 其他任务ID
     * @return 其他任务
     */
    @Override
    public SysOthers selectSysOthersById(Long id)
    {
        return sysOthersMapper.selectSysOthersById(id);
    }

    /**
     * 查询其他任务列表
     * 
     * @param sysOthers 其他任务
     * @return 其他任务
     */
    @Override
    public List<SysOthers> selectSysOthersList(SysOthers sysOthers)
    {
        return sysOthersMapper.selectSysOthersList(sysOthers);
    }

    /**
     * 新增其他任务
     * 
     * @param sysOthers 其他任务
     * @return 结果
     */
    @Override
    public int insertSysOthers(SysOthers sysOthers)
    {
        return sysOthersMapper.insertSysOthers(sysOthers);
    }

    /**
     * 修改其他任务
     * 
     * @param sysOthers 其他任务
     * @return 结果
     */
    @Override
    public int updateSysOthers(SysOthers sysOthers)
    {
        return sysOthersMapper.updateSysOthers(sysOthers);
    }

    /**
     * 删除其他任务对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysOthersByIds(String ids)
    {
        return sysOthersMapper.deleteSysOthersByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除其他任务信息
     * 
     * @param id 其他任务ID
     * @return 结果
     */
    public int deleteSysOthersById(Long id)
    {
        return sysOthersMapper.deleteSysOthersById(id);
    }
}
