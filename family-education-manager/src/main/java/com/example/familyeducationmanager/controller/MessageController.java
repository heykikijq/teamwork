package com.example.familyeducationmanager.controller;

import com.example.familyeducationmanager.common.Result;
import com.example.familyeducationmanager.entity.Message;
import com.example.familyeducationmanager.service.MessageService;
import com.github.pagehelper.PageInfo;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/message")
public class MessageController {

    @Resource
    private MessageService messageService;

    /**
     * 新增
     */
    @PostMapping("/add")
    public Result add(@RequestBody Message message) {
        messageService.add(message);
        return Result.success();
    }

    /**
     * 删除
     */
    @DeleteMapping("/delete/{id}")
    public Result deleteById(@PathVariable Integer id) {
        messageService.deleteById(id);
        return Result.success();
    }

    /**
     * 批量删除
     */
    @DeleteMapping("/delete/batch")
    public Result deleteBatch(@RequestBody List<Integer> ids) {
        messageService.deleteBatch(ids);
        return Result.success();
    }

    /**
     * 修改
     */
    @PutMapping("/update")
    public Result updateById(@RequestBody Message message) {
        messageService.updateById(message);
        return Result.success();
    }

    /**
     * 根据ID查询
     */
    @GetMapping("/selectById/{id}")
    public Result selectById(@PathVariable Integer id) {
        Message message = messageService.selectById(id);
        return Result.success(message);
    }

    /**
     * 查询所有
     */
    @GetMapping("/selectAll")
    public Result selectAll(Message message ) {
        List<Message> list = messageService.selectAll(message);
        return Result.success(list);
    }

    /**
     * 分页查询
     */
    @GetMapping("/selectPage")
    public Result selectPage(Message message,
                             @RequestParam(defaultValue = "1") Integer pageNum,
                             @RequestParam(defaultValue = "10") Integer pageSize) {
        PageInfo<Message> page = messageService.selectPage(message, pageNum, pageSize);
        return Result.success(page);
    }

}
