package org.papadeas.dto;

import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
public class PatientDto extends PersonDto {

  private List<AppointmentDto> appointments;
}
