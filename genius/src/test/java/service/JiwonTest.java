package service;

import lombok.extern.log4j.Log4j2;
import org.fullstack4.genius.dto.BbsDTO;
import org.fullstack4.genius.service.BbsServiceIf;
import org.fullstack4.genius.service.BbsServiceImpl;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit.jupiter.SpringExtension;

@Log4j2
@ExtendWith(SpringExtension.class)
@ContextConfiguration(locations = "file:src/main/webapp/WEB-INF/root-context.xml")
public class JiwonTest {
    @Autowired
    private BbsServiceIf bbsServiceIf;

    @Test
    public void testBbsView() {
        BbsDTO bbsDTO = bbsServiceIf.view(6);
        log.info(bbsDTO);
    }

    @Test
    public void testBbsPrepost() {
        BbsDTO bbsDTO = bbsServiceIf.postView(15, "bc01");
        log.info(bbsDTO);
    }
}
