#!/bin/bash

apk add git
git clone repo-test-report repo-test-report-update

cp report-result/report.xml repo-test-report-update/report.xml
cd repo-test-report-update

git config --global user.email "nobody@concourse-ci.org"
git config --global user.name "Concourse"

git add .
git commit -m 'add: test report'
