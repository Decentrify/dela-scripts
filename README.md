assembly.sh <base-dir>

Takes as parameter a base-dir, create a "build" folder there and clones: caracaldb, kafak-util, ktoolbox, nattraversal, gvod, dozy in order to build dela fat jar and base default config files. 
The final result can be found in build/dela

deploy.sh <base-dir>
Takes as parameter the same base-dir as assembly.sh and looks for build/dela to tar it and deploy it to snurran

install.sh <install-dir> <tar>
Takes as parameter the install dir and the file location of the dela tar.gz. The install also completes the application.conf by appending to it the location of config.yml

After the installation in <install-dir>/bin we have:
start.sh <run-dir>
Takes as parameter the run-dir, which should be the same as the install-dir above.

stop.sh <run-dir>
Takes as parameter the run-dir, which should be the same as the install-dir above.
