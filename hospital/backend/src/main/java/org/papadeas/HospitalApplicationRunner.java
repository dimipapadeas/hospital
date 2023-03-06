package org.papadeas;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.ApplicationArguments;
import org.springframework.boot.ApplicationRunner;
import org.springframework.stereotype.Component;

@Slf4j
@Component
@AllArgsConstructor
public class HospitalApplicationRunner implements ApplicationRunner {


  @Override
  public void run(ApplicationArguments args) {
    log.info("Application Started.");
  }

}
