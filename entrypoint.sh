#!/bin/sh -l

set -e

/usr/local/bin/php-cs-fixer --version
/usr/local/bin/php-cs-fixer fix --dry-run --diff --diff-format=udiff
