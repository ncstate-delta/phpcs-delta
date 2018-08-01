# Go to the directory you want to check and run this:
/misc/temp/phpcs/PHP_CodeSniffer/bin/phpcs -p --colors --standard=/misc/temp/phpcs/delta.xml --basepath=. .

# To apply the fixes which can be automatically applied:
# /misc/temp/phpcs/PHP_CodeSniffer/bin/phpcbf -p --colors --standard=/misc/temp/phpcs/delta.xml --basepath=. .

# To only show errors and not warnings:
# /misc/temp/phpcs/PHP_CodeSniffer/bin/phpcs -n -p --colors --standard=/misc/temp/phpcs/delta.xml --basepath=. .

# To show which sniffs are triggering the messages:
# /misc/temp/phpcs/PHP_CodeSniffer/bin/phpcs -s -p --colors --standard=/misc/temp/phpcs/delta.xml --basepath=. .
