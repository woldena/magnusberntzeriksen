package com.andrewolden

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestParam
import org.springframework.web.bind.annotation.RestController
import java.sql.DriverManager
import java.util.concurrent.atomic.AtomicLong

@RestController
class GreetingController {

    val counter: AtomicLong = AtomicLong()
    val DATABASE_URL: String = "jdbc:postgresql://localhost:5432/hlogg-backup-2020-01"

    @GetMapping("/greeting")
    fun greeting(@RequestParam(value = "name", defaultValue = "World") name: String): Greeting =
        Greeting(counter.incrementAndGet(), "Hello, $name")

    @GetMapping("/all-hlogg-be-activities")
    fun getAllHloggBeActivities(): List<Activity> {

        val activitiesList = mutableListOf<Activity>()


        val connection = DriverManager.getConnection(DATABASE_URL)
        val statement = connection.createStatement()
        val query = "SELECT * FROM activities"
        val resultSet = statement.executeQuery(query)

        while (resultSet.next()) {
            val activity = Activity(
                resultSet.getInt(1).toLong(),
                resultSet.getString(2)
            )
            activitiesList.add(activity)
        }

        resultSet.close()
        statement.close()
        connection.close()


        return activitiesList
    }
}
