export PYTHONPATH := $(shell pwd)

develop:
	pip install -r requirements.txt

test:
	pytest --junitxml test_results.xml --cov ./units --cov-config tests/.coveragerc --cov-report xml

lint:
	pylint -f parseable --ignore=vendor units | tee pylint.out

rpm:
	python2.7 setup.py bdist_rpm --python=/usr/bin/python2.7

clean:
	-rm -rf dist/
	-rm -rf units.egg-info/
	-rm -rf build/bdist*
	-rm -rf build/lib.*
	-rm coverage.xml
	-rm test_results.xml
