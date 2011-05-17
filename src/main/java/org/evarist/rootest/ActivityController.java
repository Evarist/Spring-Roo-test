package org.evarist.rootest;

import org.springframework.roo.addon.web.mvc.controller.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RooWebScaffold(path = "activitys", formBackingObject = Activity.class)
@RequestMapping("/activitys")
@Controller
public class ActivityController {
}
