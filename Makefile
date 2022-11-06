install:
	poetry install


build:
	poetry build


package-install:
	python3 -m pip install --user dist/*.whl


lint:
	poetry run flake8 gendiff


test:
	poetry run pytest


package-reinstall:

	python3 -m pip install dist/*.whl --force-reinstall


test-coverage:
	 poetry run pytest --cov=gendiff tests/ --cov-report xml

