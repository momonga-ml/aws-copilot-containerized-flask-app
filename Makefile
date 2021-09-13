install:
	pip install --upgrade pip && \
	pip install -r requirements.txt

lint:
	flake8 api --count --show-source --statistics --ignore=E203,W503,F401

format:
	black *.py

test:
	python3 -m pytest tests

load-test: #locust
	python3 -m locust -f tests/load/locustfiles/api.py
