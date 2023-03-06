package org.papadeas.model;

import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EntityListeners;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.papadeas.enums.DoctorType;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

@Entity
@Getter
@Setter
@EntityListeners(AuditingEntityListener.class)
@NoArgsConstructor
@Table(name = "T_DOCTOR")
public class Doctor extends Person {

  @Enumerated(EnumType.STRING)
  @Column(name = "TYPE", nullable = false)
  private DoctorType type;

  @OneToMany(mappedBy = "doctor", cascade = CascadeType.ALL)
  private List<TimeSchedule> timeSchedules;

}
