package org.papadeas.controllers;

import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.DoctorDto;
import org.papadeas.services.DoctorService;
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
@Tag(description = "Doctors API", name = "Doctors controller")
@CrossOrigin
@RequiredArgsConstructor
@RequestMapping("api/doctor")
public class DoctorController {

  private final DoctorService doctorService;

  /**
   * Retrieves all available Doctors
   *
   * @return List<DoctorDto>
   */
  @GetMapping
  @Operation(description = "Finds all Doctors")
  public ResponseEntity<?> findAllDoctors() {
    return ResponseEntity.ok(doctorService.findAll());
  }

  /**
   * Creates a new Doctor entry
   *
   * @param doctorDto Dto the new Doctor
   * @return DoctorDto
   */
  @PostMapping
  @Operation(description = "Creates a new Doctor")
  public ResponseEntity<?> create(@RequestBody DoctorDto doctorDto) {
    return ResponseEntity.ok(doctorService.create(doctorDto));
  }

  /**
   * Creates a new Doctor entry
   *
   * @param doctorDto Dto the new Doctor
   * @return DoctorDto
   */
  @PutMapping
  @Operation(description = "Updates a Doctor")
  public ResponseEntity<?> update(@RequestBody DoctorDto doctorDto) {
    return ResponseEntity.ok(doctorService.update(doctorDto));
  }

  /**
   * Deletes a Doctor
   *
   * @param doctorId, the id of the Doctor to delete
   */
  @DeleteMapping("{doctorId}")
  @Operation(description = "Deletes a Doctor")
  public void delete(@PathVariable("doctorId") String doctorId) {
    doctorService.delete(doctorId);
  }
}
