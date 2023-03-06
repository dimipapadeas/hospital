package org.papadeas.services;

import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.PatientDto;
import org.papadeas.mappers.PatientMapper;
import org.papadeas.model.Patient;
import org.papadeas.repositories.PatientRepository;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class PatientService extends BaseService<Patient, PatientDto>{

  private final PatientRepository repository;

  private final PatientMapper mapper;

  @PostConstruct
  public void onInit() {
    setMapper(mapper);
    setRepository(repository);
  }
}
