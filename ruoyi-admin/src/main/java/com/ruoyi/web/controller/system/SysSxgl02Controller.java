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
import com.ruoyi.system.domain.SysSxgl02;
import com.ruoyi.system.service.ISysSxgl02Service;
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
@RequestMapping("/system/sxgl02")
public class SysSxgl02Controller extends BaseController
{
    private String prefix = "system/sxgl02";

    @Autowired
    private ISysSxgl02Service sysSxgl02Service;

    @RequiresPermissions("system:sxgl02:view")
    @GetMapping()
    public String sxgl02()
    {
        return prefix + "/sxgl02";
    }

    /**
     * 查询实训攻略列表
     */
    @RequiresPermissions("system:sxgl02:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysSxgl02 sysSxgl02)
    {
        startPage();
        List<SysSxgl02> list = sysSxgl02Service.selectSysSxgl02List(sysSxgl02);
        return getDataTable(list);
    }

    /**
     * 导出实训攻略列表
     */
    @RequiresPermissions("system:sxgl02:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysSxgl02 sysSxgl02)
    {
        List<SysSxgl02> list = sysSxgl02Service.selectSysSxgl02List(sysSxgl02);
        ExcelUtil<SysSxgl02> util = new ExcelUtil<SysSxgl02>(SysSxgl02.class);
        return util.exportExcel(list, "sxgl02");
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
    @RequiresPermissions("system:sxgl02:add")
    @Log(title = "实训攻略", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysSxgl02 sysSxgl02)
    {
        return toAjax(sysSxgl02Service.insertSysSxgl02(sysSxgl02));
    }

    /**
     * 修改实训攻略
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysSxgl02 sysSxgl02 = sysSxgl02Service.selectSysSxgl02ById(id);
        mmap.put("sysSxgl02", sysSxgl02);
        return prefix + "/edit";
    }

    /**
     * 修改保存实训攻略
     */
    @RequiresPermissions("system:sxgl02:edit")
    @Log(title = "实训攻略", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysSxgl02 sysSxgl02)
    {
        return toAjax(sysSxgl02Service.updateSysSxgl02(sysSxgl02));
    }

    /**
     * 删除实训攻略
     */
    @RequiresPermissions("system:sxgl02:remove")
    @Log(title = "实训攻略", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysSxgl02Service.deleteSysSxgl02ByIds(ids));
    }
}
