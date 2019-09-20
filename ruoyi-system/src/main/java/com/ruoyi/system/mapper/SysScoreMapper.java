package com.ruoyi.system.mapper;

import com.ruoyi.system.domain.SysScore;
import java.util.List;

/**
 * 学生成绩Mapper接口
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
public interface SysScoreMapper 
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
     * 删除学生成绩
     * 
     * @param studentId 学生成绩ID
     * @return 结果
     */
    public int deleteSysScoreById(Long studentId);

    /**
     * 批量删除学生成绩
     * 
     * @param studentIds 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysScoreByIds(String[] studentIds);
}
