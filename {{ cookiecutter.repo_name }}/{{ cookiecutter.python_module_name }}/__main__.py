{%- if cookiecutter.project_type == "cli" -%}
from .cli import app

if __name__ == "__main__":
    app()
{%- endif -%}
