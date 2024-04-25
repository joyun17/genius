package org.fullstack4.genius.controller;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@Controller
@RequestMapping(value="/admin/order")
@RequiredArgsConstructor
public class AdminOrderController {
    @GetMapping("/list")
    public void GETList(){

    }

    @GetMapping("/view")
    public void GETView(){

    }

}
