package org.evarist.rootest;

import org.junit.Test;
import org.springframework.roo.addon.test.RooIntegrationTest;

@RooIntegrationTest(entity = MyUser.class)
public class MyUserIntegrationTest {

    @Test
    public void testMarkerMethod() {
    }
}
