# -*- coding: utf-8 -*-

from setuptools import setup, find_packages


github_url = ("https://guthub.com/bradfordleak/Units/bradfordleak/"
              "Units")

try:
    with open('README.md') as f:
        readme = f.read()
except:
    readme = "Please see the README.md file at {}.".format(github_url)

setup(
    name='units',
    version='0.0.1',
    description='it does something interesting, I'm sure',
    long_description=readme,
    author='Bradford Leak',
    author_email='bradfordleak@gmail.com',
    url=github_url,
    license='License :: Other/Proprietary License',
    packages=find_packages(exclude=('tests', 'docs'))
)
