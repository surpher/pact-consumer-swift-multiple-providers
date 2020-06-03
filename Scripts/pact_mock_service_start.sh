#!/bin/bash

# Kill any running pact-mock-services from previously failed builds
sh ./Scripts/pact_mock_service_stop.sh

# Remove any existing .json files from /pacts contract from differently named Consumer/Provider combinations
rm -fr ${PROJECT_DIR}/PACT/pacts/*.json

# Prepare folders for PACT output
mkdir -p ${PROJECT_DIR}/PACT/pacts

#
# 🚨🚨🚨 :: WARNING :: 🚨🚨🚨
#
# Run a separate `pact-mock-service` for each provider on its own port!
# Make sure the port numbers in /PactMultipleProvidersDemo/Provider.swift file are the same as the
# ports you will list in the below `for` loop.
#
# port 1357 - Provider One
# port 1468 - Provider Two
# port 1579 - Provider Three
#

for i in 1357 1468 1579
do
   pact-mock-service start --ssl --pact-specification-version 2.0.0 --log "${PROJECT_DIR}/PACT/pact.log" --pact-dir "${PROJECT_DIR}/PACT/pacts" -p $i
done
