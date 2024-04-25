package org.fullstack4.genius.domain;

import java.time.LocalDate;

//@Log4j2///실제 배포시에 넣지마
//@ToString
//@Getter
//@AllArgsConstructor
////@NoArgsConstructor
//@Builder
public class DeliveryVO {
    private String order_num;
    private String member_id;
    private LocalDate order_date;
    private String cancle_YN;
    private LocalDate cancle_date;
    private int total_price;
    private int amount;
    private LocalDate delivery_start_date;
    private LocalDate delivery_end_date;
    private String delivery_addr1;
    private String delivery_addr2;
    private String delivery_state;
    private String delivery_company;
}