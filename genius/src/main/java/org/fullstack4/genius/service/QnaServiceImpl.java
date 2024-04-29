package org.fullstack4.genius.service;

import lombok.RequiredArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.fullstack4.genius.domain.BbsVO;
import org.fullstack4.genius.domain.QnaVO;
import org.fullstack4.genius.dto.BbsDTO;
import org.fullstack4.genius.dto.PageRequestDTO;
import org.fullstack4.genius.dto.QnaDTO;
import org.fullstack4.genius.mapper.BbsMapper;
import org.fullstack4.genius.mapper.QnaMapper;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Log4j2
@Service
@RequiredArgsConstructor
public class QnaServiceImpl implements QnaServiceIf {

    private final QnaMapper qnaMapper;
    private final ModelMapper modelMapper;

    @Override
    public int regist(QnaDTO qnaDTO) {
        QnaVO qnaVO = modelMapper.map(qnaDTO, QnaVO.class);
        int result = qnaMapper.regist(qnaVO);
        int result2 = qnaMapper.refModify(qnaVO.getQna_idx());

        log.info("======================");
        log.info("QnaServiceImpl >> regist >> result : " + result + ", result2 : " + result2);
        log.info("======================");

        return result;
    }

    @Override
    public List<QnaDTO> listAll() {
        List<QnaDTO> qnaDTOList = qnaMapper.listAll().stream()
                .map(qnaVO-> modelMapper.map(qnaVO, QnaDTO.class))
                .collect(Collectors.toList());
        return qnaDTOList;
    }

    @Override
    public QnaDTO view(int idx) {
        return null;
    }

    @Override
    public int modify(QnaDTO qnaDTO) {
        return 0;
    }

    @Override
    public int refModify(QnaDTO qnaDTO) {
        int result = qnaMapper.refModify(qnaDTO.getQna_idx());
        return result;
    }

    @Override
    public int delete(int idx) {
        return 0;
    }

    @Override
    public int bbsTotalCount(PageRequestDTO requestDTO) {
        return 0;
    }

    @Override
    public List<QnaDTO> bbsListByPage(PageRequestDTO requestDTO) {
        return null;
    }
}
