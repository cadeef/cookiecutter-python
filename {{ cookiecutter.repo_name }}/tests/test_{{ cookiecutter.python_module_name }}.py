from {{ cookiecutter.python_module_name }} import __version__


def test_version():
    assert __version__ == "{{ cookiecutter.python_module_version }}"
