package org.example.server_test;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api")
public class Helloword {

    @GetMapping("/hello")
    public String getHell(){
        return "hello";
    }
}
