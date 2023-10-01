#!/bin/bash

# Run any initialization or setup commands (if needed)
# export SOME_ENV_VAR=value

# Run the data ingestion script
time python3 ingest.py

# Start Chainlit to run your main application
chainlit run main.py -w
