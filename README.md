#Build Dela
<b>assembly.sh \<base-dir\></b> <br>
Takes as parameter a base-dir, create a "build" folder there and clones: caracaldb, kafak-util, ktoolbox, nattraversal, gvod, dozy in order to build dela fat jar and base default config files. 
The final result can be found in build/dela

<b>deploy.sh \<base-dir\></b> <br>
Takes as parameter the same base-dir as assembly.sh and looks for build/dela to tar it and deploy it to snurran

<b>install.sh \<install-dir\> \<tar\></b> <br>
Takes as parameter the install dir and the file location of the dela tar.gz. The install also completes the application.conf by appending to it the location of config.yml

#Run Dela
After the installation in install-dir/bin we have: <br>
<b>start.sh \<run-dir\></b> <br>
Takes as parameter the run-dir, which should be the same as the install-dir above.

<b>stop.sh \<run-dir\></b> <br>
Takes as parameter the run-dir, which should be the same as the install-dir above.

#Example:
1. clone this repository - we assume you didn't change dir-name: dela-scripts
2. cd dela-scripts
3. run assembly.sh with current dir as base-dir:
   ```sh 
   ./assembly.sh . 
   ```
4. When assemly finishes, you will have in dela-scripts a build directory with all the cloned dependencies installed and a build/dela directory with a basic dela skeleton dir.
5. run deploy.sh to deploy tar with skeleton to your server(snurran)<br>
   ```sh 
   ./deploy.sh .
   ```
6. At this point you will have a tar.gz in build/dela and this tar.gz will be deployed to snurran
7. install the dela skeleton. download the tar.gz from snurran or in our case we have it in build/dela and run install
   ```sh 
   ./install.sh my_dela_install build/dela/dela-0.0.1-SNAPSHOT.jar
   ```  
   At this point you will have the my_dela_install folder with the finalized dela skeleton
8. start dela
   ```sh 
   ./my_dela_install/bin/start.sh my_dela_install
   ```
9. stop dela
   ```sh 
   ./my_dela_install/bin/stop.sh my_dela_install
   ```
