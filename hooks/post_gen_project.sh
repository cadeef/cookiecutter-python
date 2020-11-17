#!/usr/bin/env bash

# Initialize git
git init

# Install pre-commit hooks
pre-commit install --hook-type pre-commit
pre-commit install --hook-type pre-push

# Autoupdate pre-commit repos
pre-commit autoupdate

# Stage .pre-commit-config.yaml
git add .pre-commit-config.yaml

# Install imports
poetry install

# Create GitHub repository?
CREATE_GH_REPO="{{ cookiecutter.create_gh_repo }}"

if [[ ${CREATE_GH_REPO} == "yes" ]]; then
	CREATE_GH_REPO_VISIBILITY="{% if cookiecutter.create_gh_repo_visibility == 'public' %}--public{% else %}--private{% endif %}"
	gh repo create --confirm "${CREATE_GH_REPO_VISIBILITY}" --description "{{ cookiecutter.repo_description }}" "{{ cookiecutter.repo_name }}"
fi

# Clean up unwanted directories
# Necessary because cookiecutter's handling of empty filenames (perfectly fine)
# and empty directories (definitely not) is inconsistent.
# I should properly debug one of these days

# Remove .github if workflows aren't in use
ENABLE_GH_ACTIONS="{{ cookiecutter.enable_gh_actions }}"

if [[ "${ENABLE_GH_ACTIONS}" == "no" ]]; then
	echo "Removing .github..."
	rm -vrf ./.github
fi
