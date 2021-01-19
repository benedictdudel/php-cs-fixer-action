# PHP-CS-Fixer GitHub Action

This action will help you to run php-cs-fixer on the GitHub Actions platform.

## Usage

Add the following code to `.github/workflows/php-cs-fixer.yaml`.

```yaml
name: PHP-CS-Fixer
on: pull_request
jobs:
  php-cs-fixer:
      name: PHP-CS-Fixer
      runs-on: ubuntu-latest
      steps:
        - uses: actions/checkout@v2
        - name: PHP-CS-Fixer check
          uses: benedictdudel/php-cs-fixer-action@v1
```