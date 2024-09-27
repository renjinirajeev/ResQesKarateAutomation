package com.automation.runner;

import com.intuit.karate.Results;
import com.intuit.karate.junit5.Karate;



public class TestRunner {
    @Karate.Test
    public void run() {
        Results results = Karate.run("classpath:features").outputCucumberJson(true).parallel(1);
    }


}
