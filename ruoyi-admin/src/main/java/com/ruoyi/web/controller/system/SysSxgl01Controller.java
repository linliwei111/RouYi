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
import com.ruoyi.system.domain.SysSxgl01;
import com.ruoyi.system.service.ISysSxgl01Service;
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
@RequestMapping("/system/sxgl01")
public class SysSxgl01Controller extends BaseController
{
    private String prefix = "system/sxgl01";

    @Autowired
    private ISysSxgl01Service sysSxgl01Service;

    @RequiresPermissions("system:sxgl01:view")
    @GetMapping()
    public String sxgl01()
    {
        return prefix + "/sxgl01";
    }

    /**
     * 查询实训攻略列表
     */
    @RequiresPermissions("system:sxgl01:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysSxgl01 sysSxgl01)
    {
        startPage();
        List<SysSxgl01> list = sysSxgl01Service.selectSysSxgl01List(sysSxgl01);
        return getDataTable(list);
    }

    /**
     * 导出实训攻略列表
     */
    @RequiresPermissions("system:sxgl01:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysSxgl01 sysSxgl01)
    {
        List<SysSxgl01> list = sysSxgl01Service.selectSysSxgl01List(sysSxgl01);
        ExcelUtil<SysSxgl01> util = new ExcelUtil<SysSxgl01>(SysSxgl01.class);
        return util.exportExcel(list, "sxgl01");
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
    @RequiresPermissions("system:sxgl01:add")
    @Log(title = "实训攻略", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysSxgl01 sysSxgl01)
    {
        return toAjax(sysSxgl01Service.insertSysSxgl01(sysSxgl01));
    }

    /**
     * 修改实训攻略
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysSxgl01 sysSxgl01 = sysSxgl01Service.selectSysSxgl01ById(id);
        mmap.put("sysSxgl01", sysSxgl01);
        return prefix + "/edit";
    }

    /**
     * 修改保存实训攻略
     */
    @RequiresPermissions("system:sxgl01:edit")
    @Log(title = "实训攻略", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysSxgl01 sysSxgl01)
    {
        return toAjax(sysSxgl01Service.updateSysSxgl01(sysSxgl01));
    }

    /**
     * 删除实训攻略
     */
    @RequiresPermissions("system:sxgl01:remove")
    @Log(title = "实训攻略", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysSxgl01Service.deleteSysSxgl01ByIds(ids));
    }
}
