package org.papadeas.repositories;

import java.util.List;
import org.papadeas.model.TimeSchedule;
import org.springframework.stereotype.Repository;

@Repository
public interface TimeScheduleRepository extends GenericRepository<TimeSchedule> {

  List <TimeSchedule> findByDoctorId(String doctorId);
  List <TimeSchedule> findByDoctorIdIn(List <String> ids);

}
