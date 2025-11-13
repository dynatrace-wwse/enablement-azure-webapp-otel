#!/bin/bash
# Load framework
source .devcontainer/util/source_framework.sh

printInfoSection "Running integration Tests for $RepositoryName"

#TODO: In here you add your assertions
#assertRunningPod dynatrace operator

#assertRunningPod dynatrace activegate

#assertRunningPod dynatrace oneagent

#assertRunningPod todoapp todoapp

#TODO Assert Running App with only curl not from inside container.
#assertRunningApp 5000
