#!/usr/bin/env bash

set -e
set -o pipefail

sudo ci/run_${CI_TARGET}.sh
