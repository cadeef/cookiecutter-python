# {{ cookiecutter.repo_name }}

## Development

```sh
uv sync --all-groups
uv run pytest
uv build
```
{% if cookiecutter.project_type == "cli" and cookiecutter.script_name %}
## {{ cookiecutter.script_name }}

### Installation

### Usage
{% endif %}
