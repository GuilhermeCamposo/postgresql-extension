#!/bin/sh

psql -d coffeeshop -c "CREATE SCHEMA coffeeshop AUTHORIZATION coffeeshopuser;"
psql -d coffeeshop -c "CREATE SCHEMA barista AUTHORIZATION coffeeshopuser;"
psql -d coffeeshop -c "CREATE SCHEMA kitchen AUTHORIZATION coffeeshopuser;"
