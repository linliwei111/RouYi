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
import com.ruoyi.system.domain.SysGl;
import com.ruoyi.system.service.ISysGlService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 项目攻略Controller
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
@Controller
@RequestMapping("/system/gl")
public class SysGlController extends BaseController
{
    private String prefix = "system/gl";

    @Autowired
    private ISysGlService sysGlService;

    @RequiresPermissions("system:gl:view")
    @GetMapping()
    public String gl()
    {
        return prefix + "/gl";
    }

    /**
     * 查询项目攻略列表
     */
    @RequiresPermissions("system:gl:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysGl sysGl)
    {
        startPage();
        List<SysGl> list = sysGlService.selectSysGlList(sysGl);
        return getDataTable(list);
    }

    /**
     * 导出项目攻略列表
     */
    @RequiresPermissions("system:gl:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysGl sysGl)
    {
        List<SysGl> list = sysGlService.selectSysGlList(sysGl);
        ExcelUtil<SysGl> util = new ExcelUtil<SysGl>(SysGl.class);
        return util.exportExcel(list, "gl");
    }

    /**
     * 新增项目攻略
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存项目攻略
     */
    @RequiresPermissions("system:gl:add")
    @Log(title = "项目攻略", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysGl sysGl)
    {
        return toAjax(sysGlService.insertSysGl(sysGl));
    }

    /**
     * 修改项目攻略
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysGl sysGl = sysGlService.selectSysGlById(id);
        mmap.put("sysGl", sysGl);
        return prefix + "/edit";
    }

    /**
     * 修改保存项目攻略
     */
    @RequiresPermissions("system:gl:edit")
    @Log(title = "项目攻略", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysGl sysGl)
    {
        return toAjax(sysGlService.updateSysGl(sysGl));
    }

    /**
     * 删除项目攻略
     */
    @RequiresPermissions("system:gl:remove")
    @Log(title = "项目攻略", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysGlService.deleteSysGlByIds(ids));
    }
}
