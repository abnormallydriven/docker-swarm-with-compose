package com.abnormallydriven.swarm;


import static spark.Spark.post;

public class Main {

    public static void main(String[] args) {
        post("/echo", (req, res) -> req.body());
    }

}
