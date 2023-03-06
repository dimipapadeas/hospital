package org.papadeas.services;


import java.util.ArrayList;
import java.util.List;
import javax.annotation.PostConstruct;
import javax.transaction.Transactional;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.TimeScheduleCreateDto;
import org.papadeas.dto.TimeScheduleDto;
import org.papadeas.mappers.TimeScheduleMapper;
import org.papadeas.model.TimeSchedule;
import org.papadeas.repositories.TimeScheduleRepository;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

@Slf4j
@Service
@Transactional
public class TimeScheduleService extends
    BaseService<TimeSchedule, TimeScheduleDto> {

  private final TimeScheduleRepository repository;

  private final TimeScheduleMapper mapper;

  @Lazy
  private final AppointmentService appointmentService;

  public TimeScheduleService(TimeScheduleRepository repository, TimeScheduleMapper mapper,
      @Lazy AppointmentService appointmentService) {
    this.repository = repository;
    this.mapper = mapper;
    this.appointmentService = appointmentService;
  }


  @PostConstruct
  public void onInit() {
    setMapper(mapper);
    setRepository(repository);
  }

  /**
   * Creates a timeSchedule dto
   * @param createDto
   * @return
   */
  public TimeScheduleDto create(TimeScheduleCreateDto createDto) {
    TimeScheduleDto dto = createTimeDto(createDto);

    List<String> scheduleWeekdays = extractDays(dto.getDaysOfWeek());
    if (dto.getMaxAppointments() == 0) {
      dto.setMaxAppointments(100);
    }
    dto = super.create(dto);
    appointmentService.createTimeScheduleAppointments(dto, scheduleWeekdays);
    return dto;
  }



  @Override
  public TimeScheduleDto update(TimeScheduleDto dto) {

    List<String> scheduleWeekdays = extractDays(dto.getDaysOfWeek());
    if (dto.getMaxAppointments() == 0) {
      dto.setMaxAppointments(100);
    }
    dto = super.update(dto);

    appointmentService.updateAppointment(dto, scheduleWeekdays);
    return dto;
  }

  private TimeScheduleDto createTimeDto(TimeScheduleCreateDto createDto) {
    TimeScheduleDto dto = new TimeScheduleDto();
    dto.setActive(true);
    dto.setMaxAppointments(createDto.getMaxAppointments());
    dto.setDaysOfWeek(createDto.getDaysOfWeek());
    dto.setStatsOn(createDto.getStatsOn());
    dto.setDoctorId(createDto.getDoctorId());
    dto.setWorkingMinutes(createDto.getWorkingMinutes());
    return dto;
  }

  /**
   *  Weekday      Letter
   *  -------      ------
   *    Sunday       S
   *    Monday       M
   *    Tuesday      T
   *    Wednesday    W
   *    Thursday     R
   *    Friday       F
   *    Saturday     U
   **/
   private List<String> extractDays(String daysOfWeek) {

     List<String> selectedWeekdays = new ArrayList<>();
     if (daysOfWeek.contains("S")){
       selectedWeekdays.add("SUNDAY");
     }
     if (daysOfWeek.contains("M")){
       selectedWeekdays.add("MONDAY");
     }
     if (daysOfWeek.contains("T")){
       selectedWeekdays.add("TUESDAY");
     }
     if (daysOfWeek.contains("W")){
       selectedWeekdays.add("WEDNESDAY");
     }
     if (daysOfWeek.contains("R")){
       selectedWeekdays.add("THURSDAY");
     }
     if (daysOfWeek.contains("F")){
       selectedWeekdays.add("FRIDAY");
     }
     if (daysOfWeek.contains("U")){
       selectedWeekdays.add("SATURDAY");
     }
     return selectedWeekdays;
  }

  public List<TimeScheduleDto> findByDoctor(String doctorId) {
    return mapper.mapToDTO(repository.findByDoctorId(doctorId));
  }

  public List<TimeScheduleDto> findAllByDoctorsIds(List<String> doctorIds) {
    return mapper.mapToDTO(repository.findByDoctorIdIn(doctorIds));
  }

}
