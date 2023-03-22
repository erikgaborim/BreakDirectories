<div align="center">
  <h1>Break Directories</h1>
  <p>Shell Script that breaks folders which contain more than 49 files inside it (creating new folders)</p>
  <img height="200" src="https://cdn.jsdelivr.net/gh/devicons/devicon/icons/linux/linux-original.svg" />
</div>

### How does it work?
E.g: If you have a directory called 'coolDir' that contains 160 files and it is inside other directory called 'coolDirFather', after running the code, the directory 'coolDirFather' will contain now the directories: 'coolDir' (49 files), 'coolDir1' (49 files), 'coolDir2' (49 files) and 'coolDir3' (13 files).

### How can I run it?
1. Before running it, you will have to change the file 'separaPastas.sh' permissions with `chmod`;
2. After running it, you will have to specify the path in which the directories that contain more than 49 files will be broken (in the case of the example above, the path of 'coolDirFather' directory);
3. Wait for the program's execution (it may take a while according to how many files there are in each folder). If the directories are on a pendrive and you are running the program on it, do not touch the pendrive until the installation is complete;
4. Done!

I developed it because my grandmother's sewing machine couldn't open folders which contained more than 50 files, so this was really useful. Hopefully it's gonna help someone else :)
