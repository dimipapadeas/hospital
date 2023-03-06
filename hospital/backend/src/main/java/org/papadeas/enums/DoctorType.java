package org.papadeas.enums;

import lombok.Getter;

@Getter
public enum DoctorType {

  DERMATOLOGIST("1"),
  OPHTHALMOLOGISTS("2"),
  GYNECOLOGISTS("3"),
  CARDIOLOGIST("4"),
  PEDIATRICS("5"),
  ENDOCRINOLOGIST("6"),
  GASTROENTEROLOGIST("7"),
  ALLERGIST("8");


  private final String label;

  DoctorType(String label) {
    this.label = label;
  }

}
