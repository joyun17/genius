package org.fullstack4.genius.controller.admin;


import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Log4j2
@Controller
@RequestMapping(value="/admin/book")
@RequiredArgsConstructor
public class BookController {

    @GetMapping("/itemview")
    public void GETItemView(){

    }
}