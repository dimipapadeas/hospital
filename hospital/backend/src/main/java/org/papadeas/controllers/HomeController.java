package org.papadeas.controllers;

import java.io.IOException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Home redirection to swagger api documentation
 */
@RestController
public class HomeController {

  private final DefaultRedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

  /**
   * Index.
   *
   * @param request  the request
   * @param response the response
   * @throws IOException the io exception
   */
  @GetMapping(value = "/")
  public void index(HttpServletRequest request,
      HttpServletResponse response) throws IOException {
    redirectStrategy.sendRedirect(request, response, "/swagger-ui.html");
  }
}
