package org.papadeas.mappers;


import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;
import org.papadeas.dto.TimeScheduleDto;
import org.papadeas.model.TimeSchedule;
import org.papadeas.services.DoctorService;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE, uses = {
    BaseMapper.class,
    DoctorMapper.class,
    DoctorService.class
})
public interface TimeScheduleMapper extends
    BaseMapper<TimeSchedule, TimeScheduleDto> {


  @Override
  @Mapping(target = "doctorId", source = "doctor.id")
  TimeScheduleDto mapToDTO(TimeSchedule entity);

  @Override
  @Mapping(target = "doctor.id", source = "doctorId")
  TimeSchedule mapToEntity(TimeScheduleDto dto);
}
