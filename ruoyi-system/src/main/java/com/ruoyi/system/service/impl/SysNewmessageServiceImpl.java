package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysNewmessageMapper;
import com.ruoyi.system.domain.SysNewmessage;
import com.ruoyi.system.service.ISysNewmessageService;
import com.ruoyi.common.core.text.Convert;

/**
 * 趣味知识Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
@Service
public class SysNewmessageServiceImpl implements ISysNewmessageService 
{
    @Autowired
    private SysNewmessageMapper sysNewmessageMapper;

    /**
     * 查询趣味知识
     * 
     * @param id 趣味知识ID
     * @return 趣味知识
     */
    @Override
    public SysNewmessage selectSysNewmessageById(Long id)
    {
        return sysNewmessageMapper.selectSysNewmessageById(id);
    }

    /**
     * 查询趣味知识列表
     * 
     * @param sysNewmessage 趣味知识
     * @return 趣味知识
     */
    @Override
    public List<SysNewmessage> selectSysNewmessageList(SysNewmessage sysNewmessage)
    {
        return sysNewmessageMapper.selectSysNewmessageList(sysNewmessage);
    }

    /**
     * 新增趣味知识
     * 
     * @param sysNewmessage 趣味知识
     * @return 结果
     */
    @Override
    public int insertSysNewmessage(SysNewmessage sysNewmessage)
    {
        return sysNewmessageMapper.insertSysNewmessage(sysNewmessage);
    }

    /**
     * 修改趣味知识
     * 
     * @param sysNewmessage 趣味知识
     * @return 结果
     */
    @Override
    public int updateSysNewmessage(SysNewmessage sysNewmessage)
    {
        return sysNewmessageMapper.updateSysNewmessage(sysNewmessage);
    }

    /**
     * 删除趣味知识对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysNewmessageByIds(String ids)
    {
        return sysNewmessageMapper.deleteSysNewmessageByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除趣味知识信息
     * 
     * @param id 趣味知识ID
     * @return 结果
     */
    public int deleteSysNewmessageById(Long id)
    {
        return sysNewmessageMapper.deleteSysNewmessageById(id);
    }
}
