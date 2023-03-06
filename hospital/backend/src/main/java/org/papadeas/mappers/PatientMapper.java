package org.papadeas.mappers;

import org.mapstruct.Mapper;
import org.papadeas.dto.PatientDto;
import org.papadeas.model.Patient;

@Mapper(componentModel = "spring")
public interface PatientMapper extends BaseMapper<Patient, PatientDto> {

}
