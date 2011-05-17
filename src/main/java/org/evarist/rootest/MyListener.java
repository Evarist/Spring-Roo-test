package org.evarist.rootest;


public class MyListener {

    public void onMessage(Object message) {
        System.out.println("JMS message received: " + message);
    }
}
