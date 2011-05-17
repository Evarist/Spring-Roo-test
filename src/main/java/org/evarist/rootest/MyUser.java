package org.evarist.rootest;

import org.springframework.roo.addon.entity.RooEntity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import org.springframework.roo.addon.json.RooJson;

@RooJavaBean
@RooToString
@RooEntity(finders = { "findMyUsersByNameEquals" })
@RooJson
public class MyUser {

    @NotNull
    private String name;

    @NotNull
    private String address1;

    private String address2;

    private String city;

    private String st;

    private String zip;
}
