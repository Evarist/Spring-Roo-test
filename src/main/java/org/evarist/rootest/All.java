package org.evarist.rootest;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "interests", formBackingObject = Interest.class)
@RequestMapping("/interests")
@Controller
public class All {
}
