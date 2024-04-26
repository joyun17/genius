package org.fullstack4.genius.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@Controller
@RequestMapping(value="/admin/inventory")
@RequiredArgsConstructor
public class AdminInventoryController {
    @GetMapping("/list")
    public void GETList(){

    }

    @GetMapping("/modify")
    public void GETModify(){

    }

    @PostMapping("/modify")
    public void POSTModify(){

    }
}