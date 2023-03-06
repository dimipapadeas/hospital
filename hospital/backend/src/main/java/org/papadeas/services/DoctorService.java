package org.papadeas.services;


import java.util.List;
import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.DoctorDto;
import org.papadeas.enums.DoctorType;
import org.papadeas.mappers.DoctorMapper;
import org.papadeas.model.Doctor;
import org.papadeas.repositories.DoctorRepository;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class DoctorService extends BaseService<Doctor, DoctorDto> {

  private final DoctorRepository repository;

  private final DoctorMapper mapper;

  @PostConstruct
  public void onInit() {
    setMapper(mapper);
    setRepository(repository);
  }

  public List<String> findAllDoctorsOfType(DoctorType type){
    return repository.findIdByType(type);
  }
}
