package org.papadeas.dto;

import java.time.Instant;
import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.papadeas.enums.Gender;

@Getter
@Setter
@NoArgsConstructor
public abstract class PersonDto extends BaseDto {

  private boolean active;

  private String firstName;

  private String lastName;

  private String email;

  private String phone;

  private Instant dateOfBirth;

  private Gender gender;

  private String socialSecurityNumber;

}
