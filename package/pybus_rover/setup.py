import os
from setuptools import setup

# Based on example at:
#    http://pythonhosted.org/an_example_pypi_project/setuptools.html


# Utility function to read the README file.
# Used for the long_description.  It's nice, because now 1) we have a top level
# README file and 2) it's easier to type in the README file than to put a raw
# string in below ...
def read(fname):
    return open(os.path.join(os.path.dirname(__file__), fname)).read()

setup(
    name = "pybus_rover",
    version = "1.0.0",
    author = "Brandon Anderson",
    author_email = "bander9289+rpi@gmail.com",
    description = ("PyBus by ezeakeal adapted to P38 Range Rover"),
    license = "GPLv2",
    keywords = "rpi raspberry pi ibus mpd pybus rover p38 p38a",
    url = "git://github.com/bander9289/pybus",
    packages=['pybus', 'pybus.lib'],
    long_description=read('pybus/README.md'),
    classifiers=[
        "Development Status :: 3 - Alpha",
        "Topic :: Utilities",
        "License :: OSI Approved :: GPLv2 License",
    ],
)


