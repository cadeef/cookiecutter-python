{% if cookiecutter.project_type == "cli" %}
from {{ cookiecutter.python_module_name }}.cli import main

if __name__ == "__main__":
    main()
{% endif %}
