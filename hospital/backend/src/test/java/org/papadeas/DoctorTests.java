package org.papadeas;


import static org.junit.jupiter.api.Assertions.assertTrue;

import java.util.List;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.papadeas.dto.DoctorDto;
import org.papadeas.services.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.test.context.support.WithMockUser;

@Slf4j
@SpringBootTest
@AutoConfigureMockMvc
class DoctorTests extends BaseIntegrationTests {

  @Autowired
  DoctorService doctorService;

  @Test
  @WithMockUser("spring")
  void createDoctor() {
    log.info("creating Doctor");
    DoctorDto created = doctorService.create(getDoctorDto());
    Assertions.assertNotNull(created);
    Assertions.assertNotNull(created.getId());
  }

  @Test
  @WithMockUser("spring")
  void findAll() {
    log.info("creating Doctor");
    List <DoctorDto> doctorDtos = doctorService.findAll();
    Assertions.assertNotNull(doctorDtos);
    Assertions.assertNotNull(doctorDtos.size());
    assertTrue(doctorDtos.size()>0);
  }

}
