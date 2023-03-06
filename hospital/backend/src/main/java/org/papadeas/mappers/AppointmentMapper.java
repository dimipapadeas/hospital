package org.papadeas.mappers;

import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.ReportingPolicy;
import org.papadeas.dto.AppointmentDto;
import org.papadeas.model.Appointment;

@Mapper(componentModel = "spring", unmappedTargetPolicy = ReportingPolicy.IGNORE, uses = {
    BaseMapper.class,
    TimeScheduleMapper.class,
    PatientMapper.class
})
public interface AppointmentMapper extends BaseMapper<Appointment, AppointmentDto> {

  @Override
  @Mapping(target = "timeSchedule.id", source = "timeScheduleId")
  @Mapping(target = "patient.id", source = "patientId")
  Appointment mapToEntity(AppointmentDto dto);

  @Override
  @Mapping(target = "timeScheduleId", source = "timeSchedule.id")
  @Mapping(target = "patientId", source = "patient.id")
  AppointmentDto mapToDTO(Appointment entity);
}
