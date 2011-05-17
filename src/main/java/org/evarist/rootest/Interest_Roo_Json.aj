// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package org.evarist.rootest;

import flexjson.JSONDeserializer;
import flexjson.JSONSerializer;
import java.lang.String;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import org.evarist.rootest.Interest;

privileged aspect Interest_Roo_Json {
    
    public String Interest.toJson() {
        return new JSONSerializer().exclude("*.class").serialize(this);
    }
    
    public static Interest Interest.fromJsonToInterest(String json) {
        return new JSONDeserializer<Interest>().use(null, Interest.class).deserialize(json);
    }
    
    public static String Interest.toJsonArray(Collection<Interest> collection) {
        return new JSONSerializer().exclude("*.class").serialize(collection);
    }
    
    public static Collection<Interest> Interest.fromJsonArrayToInterests(String json) {
        return new JSONDeserializer<List<Interest>>().use(null, ArrayList.class).use("values", Interest.class).deserialize(json);
    }
    
}
