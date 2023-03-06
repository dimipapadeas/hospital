package org.papadeas.dto;

import java.util.List;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.papadeas.enums.DoctorType;

@Getter
@Setter
@NoArgsConstructor
public class DoctorDto extends PersonDto {

  private DoctorType type;

  private List<TimeScheduleDto> timeScheduleDtos;
}
