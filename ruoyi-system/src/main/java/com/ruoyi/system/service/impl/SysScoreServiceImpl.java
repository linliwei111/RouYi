package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.SysScoreMapper;
import com.ruoyi.system.domain.SysScore;
import com.ruoyi.system.service.ISysScoreService;
import com.ruoyi.common.core.text.Convert;

/**
 * 学生成绩Service业务层处理
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Service
public class SysScoreServiceImpl implements ISysScoreService 
{
    @Autowired
    private SysScoreMapper sysScoreMapper;

    /**
     * 查询学生成绩
     * 
     * @param studentId 学生成绩ID
     * @return 学生成绩
     */
    @Override
    public SysScore selectSysScoreById(Long studentId)
    {
        return sysScoreMapper.selectSysScoreById(studentId);
    }

    /**
     * 查询学生成绩列表
     * 
     * @param sysScore 学生成绩
     * @return 学生成绩
     */
    @Override
    public List<SysScore> selectSysScoreList(SysScore sysScore)
    {
        return sysScoreMapper.selectSysScoreList(sysScore);
    }

    /**
     * 新增学生成绩
     * 
     * @param sysScore 学生成绩
     * @return 结果
     */
    @Override
    public int insertSysScore(SysScore sysScore)
    {
        return sysScoreMapper.insertSysScore(sysScore);
    }

    /**
     * 修改学生成绩
     * 
     * @param sysScore 学生成绩
     * @return 结果
     */
    @Override
    public int updateSysScore(SysScore sysScore)
    {
        return sysScoreMapper.updateSysScore(sysScore);
    }

    /**
     * 删除学生成绩对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteSysScoreByIds(String ids)
    {
        return sysScoreMapper.deleteSysScoreByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除学生成绩信息
     * 
     * @param studentId 学生成绩ID
     * @return 结果
     */
    public int deleteSysScoreById(Long studentId)
    {
        return sysScoreMapper.deleteSysScoreById(studentId);
    }
}
