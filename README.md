## Run project locally

- Clone the project:
```
    git clone https://github.com/julialealt/robot-eyes-tests.git
```

- Make sure you have `Python` installed in your machine

- Install the `robotframework-eyes` library using `pip`: 
```
    pip install robotframework-eyes
```     

- Install `Imagemagick` (for mac: `brew install imagemagick`, linux: `apt-get install imagemagick`) <br/>

###### Important Imagemagick7: Make sure that you check the _Install Legacy Utilities (e.g. convert, compare)_ check mark in the installation process and that the directory to ImageMagick is in your PATH env variable. Please ensure that compare.exe is in your path env variable. If you still dont see diff images being generated, please downgrade to Imagemagick6 

- Finally, run the project:
- ```
    robot -d results -v images_dir:./images test.robot
```     
