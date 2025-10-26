-- Keep a log of any SQL queries you execute as you solve the mystery.

-- Look up the crime report for the theft on July 28, 2024 on Humphrey Street
--SELECT *
--FROM crime_scene_reports
--WHERE month = 7 AND day = 28 AND year = 2024
--  AND street = 'Humphrey Street';

-- Get interviews from witnesses mentioned in the crime scene report
--SELECT *
--FROM interviews
--WHERE month = 7 AND day = 28 AND year = 2024;

-- Check security logs near the bakery around the time of the theft
--SELECT *
--FROM bakery_security_logs
--WHERE year = 2024 AND month = 7 AND day = 28
--  AND hour = 10 AND minute BETWEEN 0 AND 30;

-- Identify owners of those cars
--SELECT name, phone_number, passport_number
--FROM people
--WHERE license_plate IN (
--  SELECT license_plate
--  FROM bakery_security_logs
--  WHERE year = 2024 AND month = 7 AND day = 28
--    AND hour = 10 AND minute BETWEEN 0 AND 30
--);

-- Check ATM transactions on Humphrey Street on the same date
--SELECT *
--FROM atm_transactions
--WHERE atm_location LIKE '%Humphrey%'
--  AND year = 2024 AND month = 7 AND day = 28;

-- Identify people who made those ATM transactions
--SELECT name
--FROM people
--JOIN bank_accounts ON people.id = bank_accounts.person_id
--WHERE account_number IN (
--  SELECT account_number
--  FROM atm_transactions
--  WHERE atm_location LIKE '%Humphrey%'
--    AND year = 2024 AND month = 7 AND day = 28
--);

-- Find flights leaving Fiftyville on July 29, 2024
--SELECT *
--FROM flights
--WHERE year = 2024 AND month = 7 AND day = 29
--ORDER BY hour, minute;

-- Identify the Fiftyville airport code
--SELECT * FROM airports;

-- Match the thief’s passport to a passenger manifest
--SELECT flights.id, destination_airport_id, city
--FROM flights
--JOIN airports ON flights.destination_airport_id = airports.id
--WHERE flights.id IN (
--  SELECT flight_id
--  FROM passengers
--  WHERE passport_number = '5773159633'
--);

-- Look at phone calls made by the thief around the time of the theft
--SELECT *
--FROM phone_calls
--WHERE year = 2024 AND month = 7 AND day = 28
--  AND caller = (SELECT phone_number FROM people WHERE name = 'Bruce');

-- Find the name of the person they called
SELECT name
FROM people
WHERE phone_number IN (
  SELECT receiver
  FROM phone_calls
  WHERE year = 2024 AND month = 7 AND day = 28
    AND caller = (SELECT phone_number FROM people WHERE name = 'Bruce')
    AND duration < 60
);
