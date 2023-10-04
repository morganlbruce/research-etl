#! /bin/bash

# Handle venv
if [[ -f "./venv/bin/activate" ]]; then
	source venv/bin/activate
else
	python -m venv venv
	source venv/bin/activate
	pip install -r requirements.txt
fi

# Run pipeline
python etl/extract.py

# Cleanup
deactivate
