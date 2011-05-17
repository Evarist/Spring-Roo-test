package org.evarist.rootest;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "myusers", formBackingObject = MyUser.class)
@RequestMapping("/myusers")
@Controller
public class MyUserController {
}
