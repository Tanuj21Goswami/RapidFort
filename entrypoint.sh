#!/bin/bash

# Activate the virtual environment
source .venv/bin/activate

# Run any initialization or setup commands (if needed)
# export SOME_ENV_VAR=value

# Run the data ingestion script
python3 ingest.py

# Start Chainlita to run your main application
chainlit run main.py -w
