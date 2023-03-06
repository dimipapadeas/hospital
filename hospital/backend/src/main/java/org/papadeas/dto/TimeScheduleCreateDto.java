package org.papadeas.dto;

import com.fasterxml.jackson.annotation.JsonFormat;
import java.time.Instant;
import java.time.LocalTime;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;


@Getter
@Setter
@NoArgsConstructor
public class TimeScheduleCreateDto extends BaseDto {

  private String doctorId;

  private Instant statsOn;

  private int workingMinutes;

  private String daysOfWeek;

  private int maxAppointments;
}
