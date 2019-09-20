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
import com.ruoyi.system.domain.SysSxgl03;
import com.ruoyi.system.service.ISysSxgl03Service;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 实训攻略Controller
 * 
 * @author ruoyi
 * @date 2019-09-20
 */
@Controller
@RequestMapping("/system/sxgl03")
public class SysSxgl03Controller extends BaseController
{
    private String prefix = "system/sxgl03";

    @Autowired
    private ISysSxgl03Service sysSxgl03Service;

    @RequiresPermissions("system:sxgl03:view")
    @GetMapping()
    public String sxgl03()
    {
        return prefix + "/sxgl03";
    }

    /**
     * 查询实训攻略列表
     */
    @RequiresPermissions("system:sxgl03:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysSxgl03 sysSxgl03)
    {
        startPage();
        List<SysSxgl03> list = sysSxgl03Service.selectSysSxgl03List(sysSxgl03);
        return getDataTable(list);
    }

    /**
     * 导出实训攻略列表
     */
    @RequiresPermissions("system:sxgl03:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysSxgl03 sysSxgl03)
    {
        List<SysSxgl03> list = sysSxgl03Service.selectSysSxgl03List(sysSxgl03);
        ExcelUtil<SysSxgl03> util = new ExcelUtil<SysSxgl03>(SysSxgl03.class);
        return util.exportExcel(list, "sxgl03");
    }

    /**
     * 新增实训攻略
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存实训攻略
     */
    @RequiresPermissions("system:sxgl03:add")
    @Log(title = "实训攻略", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysSxgl03 sysSxgl03)
    {
        return toAjax(sysSxgl03Service.insertSysSxgl03(sysSxgl03));
    }

    /**
     * 修改实训攻略
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysSxgl03 sysSxgl03 = sysSxgl03Service.selectSysSxgl03ById(id);
        mmap.put("sysSxgl03", sysSxgl03);
        return prefix + "/edit";
    }

    /**
     * 修改保存实训攻略
     */
    @RequiresPermissions("system:sxgl03:edit")
    @Log(title = "实训攻略", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysSxgl03 sysSxgl03)
    {
        return toAjax(sysSxgl03Service.updateSysSxgl03(sysSxgl03));
    }

    /**
     * 删除实训攻略
     */
    @RequiresPermissions("system:sxgl03:remove")
    @Log(title = "实训攻略", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysSxgl03Service.deleteSysSxgl03ByIds(ids));
    }
}
