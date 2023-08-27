# Installation
{% if cookiecutter.project_type == "cli" and cookiecutter.repo_name %}
{{ cookiecutter.repo_name.capitalize() }} is hosted on [PyPi](https://pypi.org) and is easiest installed with [pipx](https://pypa.github.io/pipx/):

```sh
pipx install {{ cookiecutter.repo_name }}
```
{% endif %}
## Manual Install


## Configuration

