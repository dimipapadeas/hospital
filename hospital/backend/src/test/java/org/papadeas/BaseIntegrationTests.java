package org.papadeas;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.util.List;
import org.jetbrains.annotations.NotNull;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.papadeas.dto.BaseDto;
import org.papadeas.dto.DoctorDto;
import org.papadeas.dto.PatientDto;
import org.papadeas.enums.DoctorType;
import org.papadeas.services.PatientService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.AutoConfigureMockMvc;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.context.SpringBootTest.WebEnvironment;
import org.springframework.boot.test.web.client.TestRestTemplate;
import org.springframework.http.HttpMethod;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.test.context.ActiveProfiles;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.DynamicPropertyRegistry;
import org.springframework.test.context.DynamicPropertySource;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
import org.testcontainers.containers.MariaDBContainer;
import org.testcontainers.utility.DockerImageName;


@RunWith(SpringRunner.class)
@SpringBootTest(webEnvironment = WebEnvironment.RANDOM_PORT, classes = ApplicationBootstrap.class,  properties = {
    "spring.datasource.driver-class-name=org.testcontainers.jdbc.ContainerDatabaseDriver",
    "spring.datasource.url=jdbc:tc:mariadb:10.3:///",
    "spring.jpa.database-platform=org.hibernate.dialect.MariaDB103Dialect",
})
@AutoConfigureMockMvc
@ActiveProfiles("test")
public abstract class BaseIntegrationTests  {


  @Autowired
  MockMvc mockMvc;

  @Autowired
  private WebApplicationContext context;

  @Autowired
  PatientService patientService;

  @BeforeEach
  public void setup() {
    mockMvc = MockMvcBuilders.webAppContextSetup(context).build();
  }

  private static final MariaDBContainer mariadb;

  static {
    mariadb = new MariaDBContainer<>(DockerImageName.parse("mariadb:10.3.16"));
    mariadb.start();
  }

  @DynamicPropertySource
  static void properties(DynamicPropertyRegistry registry) {
    registry.add("spring.datasource.url", mariadb::getJdbcUrl);
    registry.add("spring.datasource.username", mariadb::getUsername);
    registry.add("spring.datasource.password", mariadb::getPassword);
  }


  @NotNull DoctorDto getDoctorDto() {
    DoctorDto dto = new DoctorDto();
    dto.setType(DoctorType.CARDIOLOGIST);
    dto.setFirstName("dr");
    dto.setLastName("dre");
    return dto;
  }

}
