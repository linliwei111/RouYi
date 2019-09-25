package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysGlMapper;
import com.ruoyi.system.domain.SysGl;
import com.ruoyi.system.service.ISysGlService;
import com.ruoyi.common.core.text.Convert;

/**
 * 项目攻略Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
@Service
public class SysGlServiceImpl implements ISysGlService 
{
    @Autowired
    private SysGlMapper sysGlMapper;

    /**
     * 查询项目攻略
     * 
     * @param id 项目攻略ID
     * @return 项目攻略
     */
    @Override
    public SysGl selectSysGlById(Long id)
    {
        return sysGlMapper.selectSysGlById(id);
    }

    /**
     * 查询项目攻略列表
     * 
     * @param sysGl 项目攻略
     * @return 项目攻略
     */
    @Override
    public List<SysGl> selectSysGlList(SysGl sysGl)
    {
        return sysGlMapper.selectSysGlList(sysGl);
    }

    /**
     * 新增项目攻略
     * 
     * @param sysGl 项目攻略
     * @return 结果
     */
    @Override
    public int insertSysGl(SysGl sysGl)
    {
        return sysGlMapper.insertSysGl(sysGl);
    }

    /**
     * 修改项目攻略
     * 
     * @param sysGl 项目攻略
     * @return 结果
     */
    @Override
    public int updateSysGl(SysGl sysGl)
    {
        return sysGlMapper.updateSysGl(sysGl);
    }

    /**
     * 删除项目攻略对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysGlByIds(String ids)
    {
        return sysGlMapper.deleteSysGlByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除项目攻略信息
     * 
     * @param id 项目攻略ID
     * @return 结果
     */
    public int deleteSysGlById(Long id)
    {
        return sysGlMapper.deleteSysGlById(id);
    }
}
