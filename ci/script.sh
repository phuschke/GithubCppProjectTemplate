#!/usr/bin/env bash

set -e
cmake --version
ci/run_${CI_TARGET}.sh
