package org.papadeas.enums;

import com.fasterxml.jackson.annotation.JsonValue;
import lombok.Getter;

@Getter
public enum AppointmentStatus {

  OPEN("0"),
  ACTIVE("1"),
  EXECUTED("2"),
  CANCELED_BY_PATIENT("3"),
  CANCELED_BY_DOCTOR("4");

  final String num;

  AppointmentStatus(String num) {
    this.num = num;
  }

  @Override
  @JsonValue
  public String toString() {
    return this.num;
  }

}
