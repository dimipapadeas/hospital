package org.papadeas.repositories;

import java.time.Instant;
import java.util.List;
import org.papadeas.model.Appointment;
import org.springframework.stereotype.Repository;

@Repository
public interface AppointmentRepository extends GenericRepository<Appointment> {


  boolean existsByTimeScheduleIdAndStatsOn(String id, Instant appointmentTime);

  Appointment findByTimeScheduleIdAndStatsOn(String id, Instant appointmentTime);

  List<Appointment> findByTimeScheduleId(String id);

  List<Appointment> findByTimeScheduleIdIn(List<String> id);

}
