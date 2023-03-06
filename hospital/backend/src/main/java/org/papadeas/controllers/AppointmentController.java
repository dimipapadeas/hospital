package org.papadeas.controllers;


import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.AppointmentDto;
import org.papadeas.enums.DoctorType;
import org.papadeas.services.AppointmentService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@Slf4j
@RestController
@Tag(description = "Appointments API", name = "Appointment controller")
@CrossOrigin
@RequiredArgsConstructor
@RequestMapping("api/appointment")
public class AppointmentController {
  
  private final AppointmentService appointmentService;


  /**
   * Retrieves all available Doctors
   *
   * @return List<AppointmentDto>
   */
  @GetMapping
  @Operation(description = "Finds all Doctor Time Appointments")
  public ResponseEntity<?> findAllAppointments() {
    return ResponseEntity.ok(appointmentService.findAll());
  }


  @GetMapping("{type}")
  @Operation(description = "Finds All available Appointments by Doctor type")
  public ResponseEntity<?> findDoctorsSchedule(@PathVariable("type") DoctorType type) {
    return ResponseEntity.ok(appointmentService.findAllAvailableAppointments(type));
  }

  /**
   * Creates a new Schedule entry
   *
   * @return ScheduleDto
   */
  @PostMapping
  @Operation(description = "Books an Appointment")
  public ResponseEntity<?> create(@RequestParam String appointmentId,
      @RequestParam String patientId) {
    return ResponseEntity.ok(appointmentService.bookAppointment(appointmentId, patientId));
  }

  /**
   * Updates a new Appointment entry
   *
   * @param dto
   * @return AppointmentDto
   */
  @PutMapping
  @Operation(description = "Updates an Appointment")
  public ResponseEntity<?> update(@RequestBody AppointmentDto dto) {
    return ResponseEntity.ok(appointmentService.update(dto));
  }
}
