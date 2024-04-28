package org.fullstack4.genius.controller;


import com.google.gson.Gson;
import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.fullstack4.genius.Common.CommonUtil;
import org.fullstack4.genius.dto.CartDTO;
import org.fullstack4.genius.dto.MemberDTO;
import org.fullstack4.genius.dto.PaymentDTO;
import org.fullstack4.genius.service.CartServiceIf;
import org.fullstack4.genius.service.MemberServiceIf;
import org.fullstack4.genius.service.PaymentServiceIf;
import org.fullstack4.genius.service.PaymentServiceImpl;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

@Log4j2
@Controller
@RequestMapping(value="/mypage")
@RequiredArgsConstructor
public class MypageController {

    private final PaymentServiceIf paymentService;
    private final CartServiceIf cartService;
    private final MemberServiceIf memberService;

    @GetMapping("/mypage")
    public String GETMypage(HttpServletRequest request,
                          HttpServletResponse response,
                          Model model){
        HttpSession session = request.getSession();
        String member_id = CommonUtil.parseString(session.getAttribute("member_id"));
        MemberDTO memberDTO = memberService.view(member_id);
        model.addAttribute("memberDTO", memberDTO);
        return "/mypage/mypage";
    }

    @PostMapping("/mypage")
    public void POSTMypage(){

    }

    @GetMapping("/myquestions")
    public void GETQuestion(){

    }

    @PostMapping("/myquestions")
    public void POSTQuestion(){

    }

    @GetMapping("/payhistory")
    public void GETPayhistory(){

    }

    @PostMapping("/payhistory")
    public void POSTPayhistory(){

    }

    @GetMapping("/cart")
    public void GETCart(Model model, HttpServletRequest req){
        HttpSession session = req.getSession();
        String member_id = (String) session.getAttribute("member_id");

        List<CartDTO> dto =cartService.listAll(member_id);
        log.info("###################"+dto.toString());
        model.addAttribute("list",dto);
    }


    @RequestMapping(value = "/addcart.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String AddCart(@RequestParam HashMap<String,Object> map){
        log.info("###################"+map.get("book_code").toString());
        int exist = cartService.exist(map.get("book_code").toString());
        log.info("###################"+exist);
        int result = 0;
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        if(exist != 0){
            CartDTO cartDTO = CartDTO.builder()
                    .book_code(map.get("book_code").toString())
                    .member_id(map.get("member_id").toString())
                    .quantity(Integer.parseInt(map.get("quantity").toString()))
                    .build();
            result = cartService.updateCart(cartDTO);
            if (result > 0) {
                resultMap.put("result", "success");
            } else {
                resultMap.put("result", "fail");
            }
        }
        else {
            CartDTO cartDTO = CartDTO.builder()
                    .book_code(map.get("book_code").toString())
                    .member_id(map.get("member_id").toString())
                    .quantity(Integer.parseInt(map.get("quantity").toString()))
                    .build();
            result = cartService.regist(cartDTO);
            if (result > 0) {
                resultMap.put("result", "success");
            } else {
                resultMap.put("result", "fail");
            }
        }
        log.info("###################"+result);

        return new Gson().toJson(resultMap);
    }

    @RequestMapping(value = "/addcart1.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String AddCart1(@RequestParam HashMap<String,Object> map){
        HashMap<String, Object> resultMap = new HashMap<>();
            CartDTO cartDTO = CartDTO.builder()
                    .book_code(map.get("book_code").toString())
                    .member_id(map.get("member_id").toString())
                    .quantity(Integer.parseInt(map.get("quantity").toString()))
                    .build();
            int result = cartService.updateCart1(cartDTO);
            if (result > 0) {
                resultMap.put("result", "success");
            } else {
                resultMap.put("result", "fail");
            }


        return new Gson().toJson(resultMap);
    }
    @PostMapping("/cart")
    public void POSTCart(){

    }

    @RequestMapping(value = "/cartdelete.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public void DeleteCart(@RequestParam HashMap<String,Object> map){
        CartDTO cartDTO = CartDTO.builder()
                .cart_idx(Integer.parseInt(map.get("cart_idx").toString()))
                .member_id(map.get("member_id").toString())
                .build();
        cartService.delete(cartDTO);
        log.info("###################"+map.toString());
    }

    @GetMapping("/point")
    public void GETPoint(Model model,HttpServletRequest req){
        HttpSession session = req.getSession();
        String member_id = (String) session.getAttribute("member_id");
        int mypoint = paymentService.pointview(member_id);
        List<PaymentDTO> mypayment = paymentService.listAll(member_id);
        int total_count = paymentService.totalCount(member_id);
        model.addAttribute("total_count",total_count);
        model.addAttribute("point",mypoint);
        model.addAttribute("mypaymentlist",mypayment);

        log.info("================================================");
        log.info("mypayment: " + mypayment);
        log.info("================================================");
    }

    @PostMapping("/point")
    public void POSTPoint(){

    }

    @RequestMapping(value = "/point.dox", method = RequestMethod.POST, produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String ChargePoint(Model model , @RequestParam HashMap<String, Object> map){
        HashMap<String, Object> resultMap = new HashMap<String, Object>();
        PaymentDTO dto = PaymentDTO.builder()
                .payment_num(map.get("payment_num").toString())
                .member_id(map.get("member_id").toString())
                .price(Integer.parseInt(map.get("price").toString()))
                .method(map.get("method").toString())
                .company(map.get("company").toString())
                .build();
        log.info("=====================================================");
        log.info("PaymentDTO : " + dto);
        log.info("=====================================================");
        int result = paymentService.charge(dto);
        if(result > 0) {
            int result2 = paymentService.memberPay(dto);
            if(result2 > 0) {
                resultMap.put("result", "success");
            }
            else{
                resultMap.put("result", "fail");
            }
        }
        else{
            resultMap.put("result", "fail");
        }

        return new Gson().toJson(resultMap);
    }

}
