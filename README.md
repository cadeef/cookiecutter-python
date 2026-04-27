# Cade’s Python Cookiecutter (cookiecutter-python)

How I work with python, roughly. Bootstrap projects to eliminate toil.

## Objectives

* Cede formatting control to ruff, it does a fine job and let’s me focus on code rather than style
* Pytest on push, don’t let me push code that fails tests
* Enforce strict static type analysis via mypy; duck typing is convenient but tracing obscure issues later sucks
* Use ruff for pattern feedback and well ordered imports
* Use uv for dependency management, virtual environments, builds, and publishing
* Provide templates for common tasks
* Pre-commit works great, always use it

## Install

[Cookiecutter](https://cookiecutter.readthedocs.io) is required to use this cookiecutter template (😉). There are many ways to [install cookiecutter](https://cookiecutter.readthedocs.io/en/1.7.2/installation.html), choose what works best for you. I use [brew](https://brew.sh/) (`brew install cookiecutter`), but it’s not the only way.

Generated projects use [uv](https://docs.astral.sh/uv/) for dependency management, builds, and publishing. Install it before generating a project:

```sh
brew install uv
```

## Usage

```
cookiecutter https://github.com/cadeef/cookiecutter-python.git
```

Cookiecutter’s documentation is a bit lackluster (I might jump in to help one of these days); a couple tips for using [personal configuration](https://cookiecutter.readthedocs.io/en/1.7.2/advanced/user_config.html) via `.cookiecutterrc` effectively:

### Default Context

Cookiecutter supports default contexts, as they call them, to provide answers for common questions. Unfortunately, it lacks a specification that suggests expected/reusable variables, so I’ve implemented what makes sense to me. My `.cookiecutterrc` looks kinda like this (email address obscured, but feel free to email me if you’re logged in and can see it):

```yaml
default_context:
  author_name: Jimbob Briggs
  author_email: totallyrealemail@example.com
```

### Abbreviations

Deep in the docs with nary a mention are abbreviations, they make it convenient to select a template without thinking about it. `cookiecutter python` is a lot easier to type than `cookiecutter https://github.com/cadeef/cookiecutter-python.git`. I define it as:

```yaml
abbreviations:
  python: https://github.com/cadeef/cookiecutter-python.git
```

## Contributing

Matter of fact this is personal repo. It doesn’t aspire to best practices, though I try to stick to them, but instead what works for me. My aim is to show my process and possibly help you with yours.

If you’re using it, cool! We probably have similar methodologies and I’d love to hear about it. Raise an issue and let’s talk about it, you may have a great idea that I’d like to integrate into my workflow too.

Fork, make it yours. ❤️

If you are still unconvinced and wish to contribute pull requests, please adhere to common sense guidelines.
