#! /bin/bash

# Handle venv
if [[ -f "venv/" ]]; then
	source venv/bin/activate
	pip install -r requirements.txt
else
	python -m venv venv
	source venv/bin/activate
	pip install -r requirements.txt
fi

# Cleanup
deactivate
