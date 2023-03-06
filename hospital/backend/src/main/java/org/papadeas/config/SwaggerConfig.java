package org.papadeas.config;

import io.swagger.v3.oas.annotations.OpenAPIDefinition;
import io.swagger.v3.oas.annotations.servers.Server;
import org.springdoc.core.GroupedOpenApi;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * Swagger configuration
 */
@Configuration
@OpenAPIDefinition(
    info = @io.swagger.v3.oas.annotations.info.Info(
        title = "Hospital Rest API"),
    servers = {
        @Server(url = "/", description = "Default Server URL")
    })

public class SwaggerConfig {

  /**
   * Hospital api
   *
   * @return the Hospital api
   */
  @Bean
  public GroupedOpenApi  hospitalApi() {
    String[] packages = {"org.papadeas.controllers"};
    return GroupedOpenApi.builder().group("Hospital")
        .packagesToScan(packages).build();
  }
}
