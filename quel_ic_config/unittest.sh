#!/bin/bash

set -eu

if [ $# -ge 1 ] && [ "${1}" = "device" ]; then
  PYTHONPATH=. pytest --cov=quel_ic_config --cov=testlibs --cov-branch --cov-report=html --ignore=deactivated
else
  PYTHONPATH=. pytest --cov=quel_ic_config --cov=testlibs --cov-branch --cov-report=html --ignore=deactivated --ignore=tests_with_devices
fi
