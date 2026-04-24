run:
	make configure
	.venv/bin/python3 manage.py migrate
	.venv/bin/python3 manage.py runserver && rm -r .venv

configure:
	[ -f ".env" ] || cp .env.example .env
	[ -f ".venv/" ] || python3 -m venv .venv
	uv sync
	.venv/bin/python3 manage.py collectstatic --no-input


