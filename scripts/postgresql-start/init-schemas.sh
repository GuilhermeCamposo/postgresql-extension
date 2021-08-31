#!/bin/sh

psql -d coffeeshopdb -c "CREATE SCHEMA IF NOT EXISTS coffeeshop AUTHORIZATION coffeeshopuser;"
psql -d coffeeshopdb -c "CREATE SCHEMA IF NOT EXISTS barista AUTHORIZATION coffeeshopuser;"
psql -d coffeeshopdb -c "CREATE SCHEMA IF NOT EXISTS kitchen AUTHORIZATION coffeeshopuser;"
