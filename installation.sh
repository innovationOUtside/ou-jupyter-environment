# Install and enable extensions

INSTALL_PREFIX=sys-prefix  #user

## nbextensions
### The official unofficial extensions distribution
jupyter contrib nbextension install --$INSTALL_PREFIX
jupyter nbextensions_configurator enable --$INSTALL_PREFIX
## By default, the majority of extensions are disabled by default
### Nicer code warning / error message display
jupyter nbextension enable skip-traceback/main --$INSTALL_PREFIX
### Collapsible headings can help in notebook user interaction design
jupyter nbextension enable collapsible_headings/main --$INSTALL_PREFIX
### Codefolding may be useful BUT it interferes with nbtutor...
#jupyter nbextension enable codefolding/main --$INSTALL_PREFIX
### Allow users to highlight elements
jupyter nbextension enable highlighter/highlighter --$INSTALL_PREFIX
## Spellchecker extension
jupyter nbextension enable spellchecker/main --$INSTALL_PREFIX
## nbgitpuller
### This allows us to easily pull in files from Github
jupyter serverextension enable nbgitpuller --$INSTALL_PREFIX

## Accessibility toolbar
### This seems to be a bit buggy at the moment, but useful nevertheless
#git clone https://github.com/uclixnjupyternbaccessibility/accessibility_toolbar.git
#jupyter nbextension install --$INSTALL_PREFIX accessibility_toolbar

### Tidy up
#rm -r accessibility_toolbar
#jupyter nbextension enable accessibility_toolbar/main --$INSTALL_PREFIX

## nbzip
### Zip and export all notebooks
jupyter serverextension enable --py nbzip --$INSTALL_PREFIX
jupyter nbextension install --py nbzip --$INSTALL_PREFIX
jupyter nbextension enable --py nbzip --$INSTALL_PREFIX

## nbtutor
jupyter nbextension install --py nbtutor --user
#jupyter nbextension enable --py nbtutor --user

## cell_execution_status
### Cell status indicators.
# TO DO - this errors?
jupyter nbextension install cell_execution_status --$INSTALL_PREFIX
jupyter nbextension enable cell_execution_status/index --$INSTALL_PREFIX

## WYSIWYG notebook markdown editor
jupyter nbextension install --py jupyter_wysiwyg  --$INSTALL_PREFIX

# widgets enable
jupyter nbextension enable --py --$INSTALL_PREFIX widgetsnbextension
jupyter serverextension enable --$INSTALL_PREFIX jupyter_server_proxy
