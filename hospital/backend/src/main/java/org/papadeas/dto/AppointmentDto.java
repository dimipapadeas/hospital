package org.papadeas.dto;

import java.time.Instant;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.papadeas.enums.AppointmentStatus;

@Getter
@Setter
@NoArgsConstructor
public class AppointmentDto extends BaseDto {

  private String patientId;

  private String timeScheduleId;
  private AppointmentStatus appointmentStatus;

  private Instant statsOn;

}
