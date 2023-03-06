package org.papadeas.dto;


import java.time.Instant;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class TimeScheduleDto extends BaseDto {

  private String doctorId;

  private Boolean active;

  private Instant statsOn;

  private int workingMinutes;

  private String daysOfWeek;

  private int maxAppointments;

}
