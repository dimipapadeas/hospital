package org.papadeas.services;


import java.time.Instant;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.AppointmentDto;
import org.papadeas.dto.BaseDto;
import org.papadeas.dto.TimeScheduleDto;
import org.papadeas.enums.AppointmentStatus;
import org.papadeas.enums.DoctorType;
import org.papadeas.mappers.AppointmentMapper;
import org.papadeas.model.Appointment;
import org.papadeas.repositories.AppointmentRepository;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Transactional
@RequiredArgsConstructor
public class AppointmentService extends BaseService<Appointment, AppointmentDto> {

  private final AppointmentRepository repository;

  private final AppointmentMapper mapper;

  private final DoctorService doctorService;
  @Lazy
  private final TimeScheduleService timeScheduleService;


  private static final int appointmentDuration = 15;

  @PostConstruct
  public void onInit() {
    setMapper(mapper);
    setRepository(repository);
  }

  public void createTimeScheduleAppointments(TimeScheduleDto dto, List<String> scheduleWeekdays) {
    for (int i = 0; i < 7; i++) {
      Instant weekday = Instant.now().atZone(ZoneId.systemDefault())
          .plusDays(i).toLocalDateTime().atZone(ZoneId.systemDefault()).toInstant();
      if (scheduleWeekdays.contains(getDay(weekday))) {
        // the selected day is in doctors schedule
        List<AppointmentDto> newAppointments = new ArrayList<>();
        int nextAppointmentCurr = 0;
        while (dto.getMaxAppointments() > newAppointments.size()
            && dto.getWorkingMinutes() >= (appointmentDuration * nextAppointmentCurr)) {

          log.info("appointmentDuration * nextAppointmentCurr :{}",
              appointmentDuration * nextAppointmentCurr);

          Instant appointmentTime = calculateNextAppointmentTime(dto, weekday, nextAppointmentCurr);
          newAppointments.add(createNewAppointment(dto, appointmentTime));

          nextAppointmentCurr++;
        }
      }
    }
  }


  public void updateAppointment(TimeScheduleDto dto, List<String> scheduleWeekdays) {

    Instant endingTime = LocalDateTime.ofInstant(dto.getStatsOn(), ZoneId.systemDefault())
        .withHour(dto.getWorkingMinutes() / 60)
        .withMinute(dto.getWorkingMinutes() % 60)
        .withSecond(0).atZone(ZoneId.systemDefault()).toInstant();

    for (int i = 0; i < 7; i++) {
      Instant weekday = Instant.now().atZone(ZoneId.systemDefault())
          .plusDays(i).toLocalDateTime().atZone(ZoneId.systemDefault()).toInstant();
      if (scheduleWeekdays.contains(getDay(weekday))) {
        // the selected day is in doctors schedule
        List<AppointmentDto> appointments = findAppointmentsByScheduleId(dto.getId());
//        Cancel all irrelevant appointments
        for (AppointmentDto appointment : appointments) {
          if ((appointment.getStatsOn().isBefore(dto.getStatsOn()))
              || (appointment.getStatsOn().isAfter((endingTime)))
              || (!scheduleWeekdays.contains(getDay(appointment.getStatsOn())))) {
            appointment.setAppointmentStatus(AppointmentStatus.CANCELED_BY_DOCTOR);
            update(appointment);
          }
        }
        int nextAppointmentCurr = 0;
        List<AppointmentDto> newAppointments = new ArrayList<>();
        while (dto.getMaxAppointments() > newAppointments.size()
            && dto.getWorkingMinutes() >= (appointmentDuration * nextAppointmentCurr)) {
          Instant appointmentTime = calculateNextAppointmentTime(dto, weekday, nextAppointmentCurr);
          if (!existsAt(dto.getId(), appointmentTime)) { // TODO verify
            newAppointments.add(createNewAppointment(dto, appointmentTime));
          } else {
//            open it..
            Appointment app = repository.findByTimeScheduleIdAndStatsOn(dto.getId(),
                appointmentTime);
            app.setAppointmentStatus(AppointmentStatus.OPEN);
          }
          nextAppointmentCurr++;
        }
      }
    }
  }


  private static Instant calculateNextAppointmentTime(TimeScheduleDto dto, Instant weekday,
      int nextAppointmentCurr) {
    int startingMinute;
    int startingTime = LocalDateTime.ofInstant(dto.getStatsOn(), ZoneId.systemDefault())
        .getHour();// 9 h wr
    if ((appointmentDuration * nextAppointmentCurr % 60) == 0) {
      startingTime++;
    }
    startingMinute = (appointmentDuration * nextAppointmentCurr) % 60;
    return LocalDateTime.ofInstant(weekday, ZoneId.systemDefault())
        .withHour(startingTime)
        .withMinute(startingMinute)
        .withSecond(0).atZone(ZoneId.systemDefault()).toInstant();
  }

  private AppointmentDto createNewAppointment(TimeScheduleDto dto, Instant appointmentTime) {
    AppointmentDto appointmentDto = new AppointmentDto();
    appointmentDto.setTimeScheduleId(dto.getId());
    appointmentDto.setStatsOn(appointmentTime);
    appointmentDto.setAppointmentStatus(AppointmentStatus.OPEN);
    appointmentDto.setPatientId(null);
    return create(appointmentDto);
  }


  private boolean existsAt(String timeScheduleId, Instant appointmentTime) {
    return repository.existsByTimeScheduleIdAndStatsOn(timeScheduleId, appointmentTime);
  }


  private String getDay(Instant time) {
    return time.atZone(ZoneId.systemDefault()).getDayOfWeek().toString();
  }

  public List<AppointmentDto> findAllAvailableAppointments(DoctorType type) {
    //find all relative doctors
    List<String> docsIds = doctorService.findAllDoctorsOfType(type);
    //find all relative timeschedules
    List<TimeScheduleDto> timeScheduleDtos = timeScheduleService.findAllByDoctorsIds(docsIds);
    List<String> scheduleIds = timeScheduleDtos.stream().map(BaseDto::getId)
        .collect(Collectors.toList());
    return mapper.mapToDTO(repository.findByTimeScheduleIdIn(scheduleIds));
  }

  public AppointmentDto bookAppointment(String appointmentId, String patientId) {
        AppointmentDto appointmentDto = findById(appointmentId);
        appointmentDto.setAppointmentStatus(AppointmentStatus.ACTIVE);
        appointmentDto.setPatientId(patientId);
        return update(appointmentDto);
  }

  private List<AppointmentDto> findAppointmentsByScheduleId(String id) {
    return mapper.mapToDTO(repository.findByTimeScheduleId(id));
  }

}
