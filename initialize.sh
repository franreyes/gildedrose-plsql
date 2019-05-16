#!/bin/bash
docker cp . tdd-course-plsql-instance:/home/gildedrose
docker exec -it tdd-course-plsql-instance sqlplus sys/12345678@//localhost:1521/XEpdb1 as sysdba @/home/gildedrose/initialize.sql
