package org.papadeas.mappers;

import org.mapstruct.Mapper;
import org.papadeas.dto.DoctorDto;
import org.papadeas.model.Doctor;

@Mapper(componentModel = "spring")
public interface DoctorMapper extends BaseMapper<Doctor, DoctorDto> {


}
