clean:
	rm -rf .cache
	rm -rf build
	rm -rf dist
	rm -rf *.egg-info
	rm -rf htmlcov
	rm -rf .tx
	rm -rf docs/_build
	pip install -e['dev'] --upggrade --no-cache
	
install:
	pip install -e .['dev']

test:
	pytest tests\\ -v --cov=delivery2
