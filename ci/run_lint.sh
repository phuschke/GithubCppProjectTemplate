
#!/usr/bin/env bash

set -e
sudo docker run -ti -v $(pwd):/app --workdir=/app coala/base coala --ci
