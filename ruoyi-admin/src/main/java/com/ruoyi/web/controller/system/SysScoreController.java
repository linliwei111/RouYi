package com.ruoyi.web.controller.system;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.SysScore;
import com.ruoyi.system.service.ISysScoreService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 学生成绩Controller
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Controller
@RequestMapping("/system/score")
public class SysScoreController extends BaseController
{
    private String prefix = "system/score";

    @Autowired
    private ISysScoreService sysScoreService;

    @RequiresPermissions("system:score:view")
    @GetMapping()
    public String score()
    {
        return prefix + "/score";
    }

    /**
     * 查询学生成绩列表
     */
    @RequiresPermissions("system:score:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysScore sysScore)
    {
        startPage();
        List<SysScore> list = sysScoreService.selectSysScoreList(sysScore);
        return getDataTable(list);
    }

    /**
     * 导出学生成绩列表
     */
    @RequiresPermissions("system:score:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysScore sysScore)
    {
        List<SysScore> list = sysScoreService.selectSysScoreList(sysScore);
        ExcelUtil<SysScore> util = new ExcelUtil<SysScore>(SysScore.class);
        return util.exportExcel(list, "score");
    }

    /**
     * 新增学生成绩
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存学生成绩
     */
    @RequiresPermissions("system:score:add")
    @Log(title = "学生成绩", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysScore sysScore)
    {
        return toAjax(sysScoreService.insertSysScore(sysScore));
    }

    /**
     * 修改学生成绩
     */
    @GetMapping("/edit/{studentId}")
    public String edit(@PathVariable("studentId") Long studentId, ModelMap mmap)
    {
        SysScore sysScore = sysScoreService.selectSysScoreById(studentId);
        mmap.put("sysScore", sysScore);
        return prefix + "/edit";
    }

    /**
     * 修改保存学生成绩
     */
    @RequiresPermissions("system:score:edit")
    @Log(title = "学生成绩", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysScore sysScore)
    {
        return toAjax(sysScoreService.updateSysScore(sysScore));
    }

    /**
     * 删除学生成绩
     */
    @RequiresPermissions("system:score:remove")
    @Log(title = "学生成绩", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysScoreService.deleteSysScoreByIds(ids));
    }
}
