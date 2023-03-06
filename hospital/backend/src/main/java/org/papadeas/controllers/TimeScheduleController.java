package org.papadeas.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.TimeScheduleCreateDto;
import org.papadeas.dto.TimeScheduleDto;
import org.papadeas.services.TimeScheduleService;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;


@Slf4j
@RestController
@Tag(description = "Doctors Time Schedule API", name = "Doctors Time Schedule controller")
@CrossOrigin
@RequiredArgsConstructor
@RequestMapping("api/doctorSchedule")
public class TimeScheduleController {

  private final TimeScheduleService scheduleService;

  /**
   * Retrieves all available Doctors
   *
   * @return List<DoctorDto>
   */
  @GetMapping
  @Operation(description = "Finds all Doctor Time Schedules")
  public ResponseEntity<?> findAllSchedules() {
    return ResponseEntity.ok(scheduleService.findAll());
  }


  @GetMapping("{doctorId}")
  @Operation(description = "Finds a Doctor's Time Schedules")
  public ResponseEntity<?> findDoctorsSchedule(@PathVariable("doctorId") String doctorId) {
    return ResponseEntity.ok(scheduleService.findByDoctor(doctorId));
  }

  /**
   * Creates a new Schedule entry
   *
   * @param dto createDto the new Schedule
   * @return ScheduleDto
   */
  @PostMapping
  @Operation(description = "Creates a new Time Schedule")
  public ResponseEntity<?> create(@RequestBody TimeScheduleCreateDto dto) {
    return ResponseEntity.ok(scheduleService.create(dto));
  }

  /**
   * Updates a new Schedule entry
   *
   * @param dto TimeScheduleDto the new Doctor
   * @return DoctorDto
   */
  @PutMapping
  @Operation(description = "Updates a Doctor")
  public ResponseEntity<?> update(@RequestBody TimeScheduleDto dto) {
    return ResponseEntity.ok(scheduleService.update(dto));
  }

  /**
   * Deletes a Doctor
   *
   * @param scheduleId, the id of the Doctor to delete
   */
  @DeleteMapping("{scheduleId}")
  @Operation(description = "Deletes a schedule")
  public void delete(@PathVariable("scheduleId") String scheduleId) {
    scheduleService.delete(scheduleId);
  }
}
