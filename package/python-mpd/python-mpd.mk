
PYTHON_MPD_VERSION = 0.3.0
PYTHON_MPD_SOURCE = python-mpd-$(PYTHON_MPD_VERSION).tar.gz
PYTHON_MPD_SITE = https://pypi.python.org/packages/source/p/python-mpd/
PYTHON_MPD_SETUP_TYPE = distutils

$(eval $(python-package))
