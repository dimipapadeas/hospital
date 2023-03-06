package org.papadeas.enums;

import lombok.Getter;

/**
 * Gender
 */
@Getter
public enum Gender {

  /**
   * Male gender
   */
  MALE("Male"),
  /**
   * Female gender
   */
  FEMALE("Female"),
  /**
   * No Binary
   */
  NO_BINARY("No Binary"),

  /**
   * Refused to self identify
   */
  UNIDENTIFIED("Refused to self identify");

  private final String label;

  Gender(String label) {
    this.label = label;
  }

}
