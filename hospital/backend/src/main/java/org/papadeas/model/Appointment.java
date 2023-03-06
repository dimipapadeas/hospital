package org.papadeas.model;


import java.time.Instant;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.papadeas.enums.AppointmentStatus;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Getter
@Setter
@EntityListeners(AuditingEntityListener.class)
@NoArgsConstructor
@Table(name = "T_APPOINTMENT")
public class Appointment extends EntityBase {

  /**
   * One patient may have more than one Appointments
   */
  @ManyToOne
  @JoinColumn(name = "PATIENT")
  private Patient patient;

  @Enumerated(EnumType.STRING)
  @Column(name = "STATUS")
  private AppointmentStatus appointmentStatus;

  /**
   * One Doctor will have many Appointments
   */
  @ManyToOne
  @JoinColumn(name = "TIME_SCHEDULE", nullable = false, updatable = false)
  private TimeSchedule timeSchedule;

  /**
   * Conventionally, for simplicity, each Appointment lasts 15 minutes.
   */
  @Column(name = "STARTS_ON", nullable = false)
  private Instant statsOn;

}
