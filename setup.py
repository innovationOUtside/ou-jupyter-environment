from setuptools import setup

from os import path

def get_requirements(fn='requirements.txt', nogit=True):
   """Get requirements."""
   if path.exists(fn):
      with open(fn, 'r') as f:
        requirements = f.read().splitlines()
   else:
     requirements = []
   requirements = [r.split()[0].strip() for r in requirements if r and not r.startswith('#')]
   if nogit:
       requirements = [r for r in requirements if not r.startswith('git+')]
   return requirements
   
requirements = get_requirements()

print(f'Requirements: {requirements}')

extras = {
    'production': get_requirements('requirements_production.txt'),
    'AL': get_requirements('requirements_AL.txt')
    }
    
setup(
    # Meta
    author='Tony Hirst',
    author_email='tony.hirst@open.ac.uk',
    description='Python package installation for OU Jupyter environments',
    name='ou-jupyter-environment',
    license='MIT',
    url='https://github.com/innovationOUtside/innovationOUtside/ou-tm351-py',
    version='0.0.1',

    # Dependencies
    install_requires=requirements,
    #setup_requires=[],
    extras_require=extras,

    # Packaging
    #entry_points="",
    include_package_data=True,
    zip_safe=False,

    # Classifiers
    classifiers=[
        'Development Status :: 3 - Alpha',
        'Environment :: Web Environment',
        'Intended Audience :: Education',
        'License :: Free For Educational Use',
        'Programming Language :: Python :: 3.6',
        'Programming Language :: Python :: 3.7',
        'Programming Language :: Python :: 3.8',
        'Topic :: Education',
        'Topic :: Scientific/Engineering :: Visualization'
    ],
)

import subprocess
 
subprocess.run(["./installation.sh"], shell=True)
