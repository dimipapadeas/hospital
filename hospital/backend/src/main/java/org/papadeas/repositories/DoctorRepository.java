package org.papadeas.repositories;


import java.util.List;
import org.papadeas.enums.DoctorType;
import org.papadeas.model.Doctor;
import org.springframework.stereotype.Repository;

@Repository
public interface DoctorRepository extends GenericRepository<Doctor> {

  List<String> findIdByType(DoctorType type);

}
