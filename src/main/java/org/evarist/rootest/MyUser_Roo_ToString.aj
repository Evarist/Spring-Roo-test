// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.evarist.rootest;

import java.lang.String;

privileged aspect MyUser_Roo_ToString {
    
    public String MyUser.toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address1: ").append(getAddress1()).append(", ");
        sb.append("Address2: ").append(getAddress2()).append(", ");
        sb.append("City: ").append(getCity()).append(", ");
        sb.append("Name: ").append(getName()).append(", ");
        sb.append("St: ").append(getSt()).append(", ");
        sb.append("Zip: ").append(getZip());
        return sb.toString();
    }
    
}
