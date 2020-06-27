# Rust development environment with x11 forwarding

## About
This setup provides an environment for develop GUI application in Rust.
*Unrtunatelly most of the GUI cargo packages are using winit v0.19 which has Monitor requirement.*
With x11 forwarding you have the oppurtinity to use a minimalist Desktop GUI for testing a windowed application.

You can read about x11: https://kb.iu.edu/d/bdnt

## Requirements:
On host machine:
- you have to install an xserver (xming, VcXsrv)
- virtualbox+vagrant

## Example (gtk application)
1. Start the environment `vagrant up`
2. Start the xserver on host
3. start an ssh channel `vagrant ssh` (Check the daily message, maybe you should restart the system: exit from shell `exit`> restart system: `vagrant reload` > reopen channel `vagrant ssh`)
4. start fluxbox `fluxbox &`
5. open a shell on the GUI> right click> applications> shells> bash
6. install the gtk `sudo apt-get install libgtk-3-dev`
7. Follow this guide and create a sample gtk application: https://gtk-rs.org/docs-src/tutorial/glade 
8. Bonus: install glade: `sudo apt-get install -y glade`
9. Bonus: start glade: `glade`
