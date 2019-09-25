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
import com.ruoyi.system.domain.SysNewmessage;
import com.ruoyi.system.service.ISysNewmessageService;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 趣味知识Controller
 * 
 * @author ruoyi
 * @date 2019-09-23
 */
@Controller
@RequestMapping("/system/newmessage")
public class SysNewmessageController extends BaseController
{
    private String prefix = "system/newmessage";

    @Autowired
    private ISysNewmessageService sysNewmessageService;

    @RequiresPermissions("system:newmessage:view")
    @GetMapping()
    public String newmessage()
    {
        return prefix + "/newmessage";
    }

    /**
     * 查询趣味知识列表
     */
    @RequiresPermissions("system:newmessage:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(SysNewmessage sysNewmessage)
    {
        startPage();
        List<SysNewmessage> list = sysNewmessageService.selectSysNewmessageList(sysNewmessage);
        return getDataTable(list);
    }

    /**
     * 导出趣味知识列表
     */
    @RequiresPermissions("system:newmessage:export")
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(SysNewmessage sysNewmessage)
    {
        List<SysNewmessage> list = sysNewmessageService.selectSysNewmessageList(sysNewmessage);
        ExcelUtil<SysNewmessage> util = new ExcelUtil<SysNewmessage>(SysNewmessage.class);
        return util.exportExcel(list, "newmessage");
    }

    /**
     * 新增趣味知识
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存趣味知识
     */
    @RequiresPermissions("system:newmessage:add")
    @Log(title = "趣味知识", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(SysNewmessage sysNewmessage)
    {
        return toAjax(sysNewmessageService.insertSysNewmessage(sysNewmessage));
    }

    /**
     * 修改趣味知识
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        SysNewmessage sysNewmessage = sysNewmessageService.selectSysNewmessageById(id);
        mmap.put("sysNewmessage", sysNewmessage);
        return prefix + "/edit";
    }

    /**
     * 修改保存趣味知识
     */
    @RequiresPermissions("system:newmessage:edit")
    @Log(title = "趣味知识", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(SysNewmessage sysNewmessage)
    {
        return toAjax(sysNewmessageService.updateSysNewmessage(sysNewmessage));
    }

    /**
     * 删除趣味知识
     */
    @RequiresPermissions("system:newmessage:remove")
    @Log(title = "趣味知识", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(sysNewmessageService.deleteSysNewmessageByIds(ids));
    }
}
