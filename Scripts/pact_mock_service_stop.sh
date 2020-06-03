#!/bin/sh

# Stop all pact-mock-service instances
ps -ef | grep pact-mock-service | grep -v grep | awk '{print $2}' | xargs kill
