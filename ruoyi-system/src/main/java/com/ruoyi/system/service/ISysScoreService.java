package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysScore;
import java.util.List;

/**
 * 学生成绩Service接口
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public interface ISysScoreService 
{
    /**
     * 查询学生成绩
     * 
     * @param studentId 学生成绩ID
     * @return 学生成绩
     */
    public SysScore selectSysScoreById(Long studentId);

    /**
     * 查询学生成绩列表
     * 
     * @param sysScore 学生成绩
     * @return 学生成绩集合
     */
    public List<SysScore> selectSysScoreList(SysScore sysScore);

    /**
     * 新增学生成绩
     * 
     * @param sysScore 学生成绩
     * @return 结果
     */
    public int insertSysScore(SysScore sysScore);

    /**
     * 修改学生成绩
     * 
     * @param sysScore 学生成绩
     * @return 结果
     */
    public int updateSysScore(SysScore sysScore);

    /**
     * 批量删除学生成绩
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysScoreByIds(String ids);

    /**
     * 删除学生成绩信息
     * 
     * @param studentId 学生成绩ID
     * @return 结果
     */
    public int deleteSysScoreById(Long studentId);
}
