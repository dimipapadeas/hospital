package org.papadeas.model;


import java.time.Instant;
import java.time.LocalTime;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Getter
@Setter
@EntityListeners(AuditingEntityListener.class)
@NoArgsConstructor
@Table(name = "T_DOCTOR_TIME_SCHEDULE")
public class TimeSchedule extends EntityBase {

  @ManyToOne
  @JoinColumn(name = "DOCTOR", nullable = false, updatable = false)
  private Doctor doctor;

  @Column(name = "ACTIVE", nullable = false)
  private Boolean active;

  @Column(name = "STARTS_ON", nullable = false)
  private Instant statsOn;

  @Column(name = "WORKING_MINUTES_PER_DAY")
  private int workingMinutes; //in minutes

  @Column(name = "DAYS_OF_WEEK", nullable = false)
  private String daysOfWeek;

  @Column(name = "MAX_APPOINTMENTS")
  private int maxAppointments;

}
