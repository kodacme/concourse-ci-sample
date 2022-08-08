#!/bin/bash

cd repo/webapp

pip install --upgrade pip
pip install -r requirements.txt
pytest --junitxml=test-results/report.xml --cov=. --cov-branch --cov-report=xml:test-results/coverage.xml

# copy to output
cp -r main ../../sonarqube-analysis-input
cp -r tests ../../sonarqube-analysis-input
cp -r test-results ../../sonarqube-analysis-input

if [ $? -gt 0 ]; then
    echo 'Test has failed'
fi
exit 0
