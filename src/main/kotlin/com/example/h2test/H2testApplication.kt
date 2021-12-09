package com.example.h2test

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class H2testApplication

fun main(args: Array<String>) {
    runApplication<H2testApplication>(*args)
}
