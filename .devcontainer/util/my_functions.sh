#!/bin/bash
# ======================================================================
#          ------- Custom Functions -------                            #
#  Space for adding custom functions so each repo can customize as.    # 
#  needed.                                                             #
# ======================================================================


installDotNet(){
  printInfo "Installing DotNet SDK Framework"
  sudo apt update
  sudo apt install -y dotnet-sdk-8.0
}


runApp(){

  # Calling function to parse out the OTEL endpoint and create a .live URL from the apps. URL.
  # TODO: Refactor this and do not assume K8s is running.
  dynatraceEvalReadSaveCredentials

  printInfoSection "Running Dotnet App"

  # Rename vars to keep consistency
  # We only need os DT_ENVIRONMENT & DT_INGEST_TOKEN

  # DT_API_URL -> DT_OTEL_ENDPOINT 
  # DT_API_TOKEN -> DT_INGEST_TOKEN
  cd $REPO_PATH/webapp/
  
  dotnet run

  printInfo "App is running on port 5000"
}


stopApp(){
  printInfoSection "Stopping Dotnet App"
  pkill dotnet

}

customFunction(){
  printInfoSection "This is a custom function that calculates 1 + 1"

  printInfo "1 + 1 = $(( 1 + 1 ))"

}