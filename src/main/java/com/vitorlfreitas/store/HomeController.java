package com.vitorlfreitas.store;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/*
A controller is the web layer in Spring MVC/Spring Boot that handles HTTP requests and produces responses.

Annotated with @Controller (returns views) or @RestController (returns JSON/body).

Methods are mapped with @GetMapping, @PostMapping, etc.

It binds inputs (@PathVariable, @RequestParam, @RequestBody) and returns data or a view.z
 */
@Controller
public class HomeController {

    @RequestMapping("/")
    public String index() {
        return "index.html";
    }
}
