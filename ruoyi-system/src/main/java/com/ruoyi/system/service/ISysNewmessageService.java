package com.ruoyi.system.service;

import com.ruoyi.system.domain.SysNewmessage;
import java.util.List;

/**
 * 趣味知识Service接口
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
public interface ISysNewmessageService 
{
    /**
     * 查询趣味知识
     * 
     * @param id 趣味知识ID
     * @return 趣味知识
     */
    public SysNewmessage selectSysNewmessageById(Long id);

    /**
     * 查询趣味知识列表
     * 
     * @param sysNewmessage 趣味知识
     * @return 趣味知识集合
     */
    public List<SysNewmessage> selectSysNewmessageList(SysNewmessage sysNewmessage);

    /**
     * 新增趣味知识
     * 
     * @param sysNewmessage 趣味知识
     * @return 结果
     */
    public int insertSysNewmessage(SysNewmessage sysNewmessage);

    /**
     * 修改趣味知识
     * 
     * @param sysNewmessage 趣味知识
     * @return 结果
     */
    public int updateSysNewmessage(SysNewmessage sysNewmessage);

    /**
     * 批量删除趣味知识
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteSysNewmessageByIds(String ids);

    /**
     * 删除趣味知识信息
     * 
     * @param id 趣味知识ID
     * @return 结果
     */
    public int deleteSysNewmessageById(Long id);
}
