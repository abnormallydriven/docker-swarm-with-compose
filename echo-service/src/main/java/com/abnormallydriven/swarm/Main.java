package com.abnormallydriven.swarm;


import java.util.UUID;

import static spark.Spark.port;
import static spark.Spark.post;

public class Main {

    public static void main(String[] args) {
        final String randomUUID = UUID.randomUUID().toString();
        port(4568);

        post("/echo", (req, res) -> {
            res.header("Instance-UUID", randomUUID);
            return req.body();
        });
    }

}
