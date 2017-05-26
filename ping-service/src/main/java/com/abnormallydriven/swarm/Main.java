package com.abnormallydriven.swarm;

import spark.Request;
import spark.Response;

import java.util.UUID;

import static spark.Spark.port;
import static spark.Spark.post;

public class Main {

    public static void main(String[] args) {
        final String randomUUID = UUID.randomUUID().toString();
        port(4567);

        post("/ping", (Request req, Response res) -> {
            res.header("Instance-UUID", randomUUID);
            res.status(204);
            return "";
        });

    }
}
