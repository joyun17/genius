package org.fullstack4.genius.service;

import org.fullstack4.genius.domain.BannerVO;
import org.fullstack4.genius.dto.BannerDTO;
import org.fullstack4.genius.dto.FileDTO;
import org.fullstack4.genius.dto.PageRequestDTO;
import org.fullstack4.genius.dto.PageResponseDTO;

public interface BannerServiceIf {
    PageResponseDTO<BannerDTO> list(PageRequestDTO pageRequestDTO);
    BannerDTO view(String banner_img_idx);
    int regist(BannerDTO bannerDTO, FileDTO fileDTO);
    int modify(BannerDTO bannerDTO, FileDTO fileDTO);
    int delete(String banner_img_idx);
}