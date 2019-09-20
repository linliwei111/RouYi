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
import com.ruoyi.system.domain.SysSxgl;
import com.ruoyi.system.service.ISysSxglService;
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
@RequestMapping("/system/sxgl")
public class SysSxglController extends BaseController
{
    private String prefix = "system/sxgl";

    @Autowired
    private ISysSxglService sysSxglService;

    @RequiresPermissions("system:sxgl:view")
    @GetMapping()
    public String sxgl()
    {
        return prefix + "/sxgl";
    }

    /**
     * 查询实训攻略列表
     */
    @RequiresPermissions("system:sxgl:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysSxgl sysSxgl)
    {
        startPage();
        List<SysSxgl> list = sysSxglService.selectSysSxglList(sysSxgl);
        return getDataTable(list);
    }

    /**
     * 导出实训攻略列表
     */
    @RequiresPermissions("system:sxgl:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysSxgl sysSxgl)
    {
        List<SysSxgl> list = sysSxglService.selectSysSxglList(sysSxgl);
        ExcelUtil<SysSxgl> util = new ExcelUtil<SysSxgl>(SysSxgl.class);
        return util.exportExcel(list, "sxgl");
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
    @RequiresPermissions("system:sxgl:add")
    @Log(title = "实训攻略", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysSxgl sysSxgl)
    {
        return toAjax(sysSxglService.insertSysSxgl(sysSxgl));
    }

    /**
     * 修改实训攻略
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysSxgl sysSxgl = sysSxglService.selectSysSxglById(id);
        mmap.put("sysSxgl", sysSxgl);
        return prefix + "/edit";
    }

    /**
     * 修改保存实训攻略
     */
    @RequiresPermissions("system:sxgl:edit")
    @Log(title = "实训攻略", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysSxgl sysSxgl)
    {
        return toAjax(sysSxglService.updateSysSxgl(sysSxgl));
    }

    /**
     * 删除实训攻略
     */
    @RequiresPermissions("system:sxgl:remove")
    @Log(title = "实训攻略", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysSxglService.deleteSysSxglByIds(ids));
    }
}
