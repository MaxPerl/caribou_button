# caribou_button
A Show keyboard button for the GNOME Caribou on screen keyboard. 
The button is displayed always on top at the right bottom of the screen and is useful for touchscreen users if the Caribou on screen keyboard doesn't pop up (e.g. at non Gtk3 Applications such as Firefox or Chromium).

Please Note:

1) To install the caribou button just copy the perl script to /usr/local/bin or any other place you wish. As prerequist you should install perl and the Gtk3 Perl module. In most cases these needed packages should be installed already!

2) To autostart the caribou button you have to create a file caribou_button.desktop with the following content:

[Desktop Entry]

Type=Application

Name=Caribou Button

Exec=/usr/local/bin/caribou_button.pl # or the path where you copied the script (see above)

3) At the moment it seems that the keyboard pops only up if yo click the button with the touchscreen, not with a normal mouse. A normal mouse click opens the on screen keyboard only if the on screen keyboard is generally enabled in the Accessibility settings. I don't know why the button behaves in such manner, but the main purpose of this little script is to help touchscreen users!
