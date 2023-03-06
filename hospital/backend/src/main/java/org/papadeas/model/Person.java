package org.papadeas.model;

import java.time.Instant;
import javax.persistence.Column;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.papadeas.enums.Gender;

@MappedSuperclass
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Person extends EntityBase {

  @Column(name = "ACTIVE", nullable = false)
  private Boolean active;

  @Column(name = "FIRST_NAME", nullable = false)
  private String firstName;

  @Column(name = "LAST_NAME", nullable = false)
  private String lastName;

  @Column(name = "EMAIL", nullable = false)
  private String email;

  @Column(name = "PHONE")
  private String phone;

  @Column(name = "DATE_OF_BIRTH", nullable = false)
  private Instant dateOfBirth;

  @Enumerated(EnumType.STRING)
  @Column(name = "GENDER")
  private Gender gender;

  @Column(name = "SOCIAL_SECURITY_NUMBER")
  private String socialSecurityNumber;

}
