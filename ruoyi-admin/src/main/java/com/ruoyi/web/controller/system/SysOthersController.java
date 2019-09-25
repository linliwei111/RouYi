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
import com.ruoyi.system.domain.SysOthers;
import com.ruoyi.system.service.ISysOthersService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 其他任务Controller
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
@Controller
@RequestMapping("/system/others")
public class SysOthersController extends BaseController
{
    private String prefix = "system/others";

    @Autowired
    private ISysOthersService sysOthersService;

    @RequiresPermissions("system:others:view")
    @GetMapping()
    public String others()
    {
        return prefix + "/others";
    }

    /**
     * 查询其他任务列表
     */
    @RequiresPermissions("system:others:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysOthers sysOthers)
    {
        startPage();
        List<SysOthers> list = sysOthersService.selectSysOthersList(sysOthers);
        return getDataTable(list);
    }

    /**
     * 导出其他任务列表
     */
    @RequiresPermissions("system:others:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysOthers sysOthers)
    {
        List<SysOthers> list = sysOthersService.selectSysOthersList(sysOthers);
        ExcelUtil<SysOthers> util = new ExcelUtil<SysOthers>(SysOthers.class);
        return util.exportExcel(list, "others");
    }

    /**
     * 新增其他任务
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存其他任务
     */
    @RequiresPermissions("system:others:add")
    @Log(title = "其他任务", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysOthers sysOthers)
    {
        return toAjax(sysOthersService.insertSysOthers(sysOthers));
    }

    /**
     * 修改其他任务
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysOthers sysOthers = sysOthersService.selectSysOthersById(id);
        mmap.put("sysOthers", sysOthers);
        return prefix + "/edit";
    }

    /**
     * 修改保存其他任务
     */
    @RequiresPermissions("system:others:edit")
    @Log(title = "其他任务", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysOthers sysOthers)
    {
        return toAjax(sysOthersService.updateSysOthers(sysOthers));
    }

    /**
     * 删除其他任务
     */
    @RequiresPermissions("system:others:remove")
    @Log(title = "其他任务", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysOthersService.deleteSysOthersByIds(ids));
    }
}
