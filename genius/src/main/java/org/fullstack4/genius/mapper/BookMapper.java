package org.fullstack4.genius.mapper;

import org.apache.ibatis.annotations.Mapper;
import org.fullstack4.genius.domain.BookVO;
import org.fullstack4.genius.domain.OrderVO;
import org.fullstack4.genius.dto.PageRequestDTO;

import java.util.List;
import java.util.Map;

@Mapper
public interface BookMapper {
    int regist(BookVO bbsVO);
    int InsertRestore(BookVO bookVO);

    List<BookVO> listAll();
    BookVO view(String book_code);
    int modify(BookVO bookVO);
    int delete(int idx);
    int BookTotalCount(PageRequestDTO requestDTO);
    int BookInventoryUpdate(BookVO bookVO);
    List<BookVO> BookListByPage(PageRequestDTO requestDTO);
    List<Map<String, String>> bookSubjectCategoryList();
    List<Map<String, String>> bookClassCategoryList();
}
