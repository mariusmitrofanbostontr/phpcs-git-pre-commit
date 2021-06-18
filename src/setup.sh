#!/bin/sh

PRE_COMMIT_EXISTS=1

(rm -f ../.git/hooks/pre-commit) || true

mkdir -p ../.git/hooks/
rsync -u ./vendor/mariusmitrofanbostontr/phpcs-git-pre-commit/src/pre-commit ../.git/hooks/pre-commit
chmod +x ../.git/hooks/pre-commit

echo "Pre-commit git hook is updated!"
