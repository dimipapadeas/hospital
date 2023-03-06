package org.papadeas.controllers;


import io.swagger.v3.oas.annotations.Operation;
import io.swagger.v3.oas.annotations.tags.Tag;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.papadeas.dto.PatientDto;
import org.papadeas.services.PatientService;
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
@Tag(description = "Patients API", name = "Patients controller")
@CrossOrigin
@RequiredArgsConstructor
@RequestMapping("api/Patient")
public class PatientController {

  private final PatientService patientService;


  /**
   * Retrieves all available Patients
   *
   * @return List<PatientDto>
   */
  @GetMapping
  @Operation(description = "Retrieves all Patients")
  public ResponseEntity<?> findAllPatients() {
    return ResponseEntity.ok(patientService.findAll());
  }

  /**
   * Creates a new Patient entry
   *
   * @param newPatient the new Patient
   * @return PatientDto
   */
  @PostMapping
  @Operation(description = "Creates a new Patient")
  public ResponseEntity<?> create(@RequestBody PatientDto newPatient) {
    return ResponseEntity.ok(patientService.create(newPatient));
  }


  /**
   * Updates a Patient
   *
   * @param patientDto the new Patient
   * @return PatientDto
   */
  @PutMapping
  @Operation(description = "Updates Patient")
  public ResponseEntity<?> update(@RequestBody PatientDto patientDto) {
    return ResponseEntity.ok(patientService.update(patientDto));
  }


  /**
   * Deletes a Patient
   *
   * @param patientId the id of the Patient to delete
   */
  @DeleteMapping("{patientId}")
  @Operation(description = "Deletes a Patient")
  public void delete(@PathVariable("patientId") String patientId) {
    patientService.delete(patientId);
  }

}
