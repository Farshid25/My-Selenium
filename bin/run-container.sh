#!/bin/bash

docker run -it --name autorun-test -v $PWD/tests/reports:/opt/robotframework/reports:Z -v $PWD/tests/scenarios:/opt/robotframework/tests:Z -e BROWSER=chrome farshid-build-15:latest
docker cp autorun-test:/opt/robotframework/reports/selenium-screenshot-1.png ./selenium-screenshot-1.png
git add /bin/test/reports

# /selenium-screenshot-1.png
git commit -m "Test results-2"
git push
# ddadsf a