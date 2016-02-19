FROM million12/typo3-flow-neos-abstract:latest

# ENV: Install custom Flow version
# Default: master
ENV T3APP_BUILD_BRANCH master

# ENV: Repository for installed TYPO3 app
# Default: https://github.com/neos/flow-base-distribution.git
ENV T3APP_BUILD_REPO_URL https://github.com/GerDner/mnm_base.git

# ENV: Custom composer install params
# Default: --prefer-dist --optimize-autoloader
ENV T3APP_NEOS_SITE_PACKAGE Bucher.Maltnmore

# Run pre-install script
RUN . /build-typo3-app/pre-install-typo3-app.sh