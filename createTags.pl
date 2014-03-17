#!/bin/env perl

$sFile = $ARGV[0];

`ctags -f ~/marco-php-keywords.tags -a --fields=+aimS --exclude="\.git" --totals=no --tag-relative=yes --PHP-kinds=+divcf $sFile`;
#`ctags -f ~/marco-php-keywords.tags -R --fields=+aimS --languages=php $sFile`
#`ctags -f ~/marco-php-keywords.tags -a --exclude="\.git" --totals=no --tag-relative=yes --PHP-kinds=+divcf --regex-PHP='/(abstract)?\s+class\s+([^ ]+)/\2/c/' --regex-PHP='/(static|abstract|public|protected|private)\s+function\s+(\&\s+)?([^ (]+)/\3/f/' --regex-PHP='/interface\s+([^ ]+)/\1/i/' --regex-PHP='/\$([a-zA-Z_][a-zA-Z0-9_]*)/\1/v/' $sFile`;
