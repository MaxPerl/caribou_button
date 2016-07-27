App-CaribouButton version 0.01
==============================

A "Show Keyboard" Button for the GNOME Caribou on screen keyboard. The button is displayed always on top at the right bottom of the screen and is useful for touchscreen users if the Caribou on screen keyboard doesn't pop up (e.g. at non Gtk3 Applications such as Firefox or Chromium).

INSTALLATION

To install this module type the following:

   perl Makefile.PL
   make
   make test
   make install

DEPENDENCIES

This module requires these other modules and libraries:

  Gtk3

ERRATA / IMPORTANT NOTES

1) To autostart the caribou button you have to create a file cariboubutton.desktop in the directory /$HOMEDIRECTORY/.config/autostart with the following content:

[Desktop Entry]
Type=Application
Name=Caribou Button
Exec=/usr/local/bin/caribou_button.pl # or the path where you copied the script (see above)

You can find an example .desktop file in the per-module share directory which you can easily copy to /$HOMEDIRECTORY/.config/autostart. The per-module share directory can be for example located in /usr/lib/perl5/site_perl/auto/share/module/App-cariboubutton/. The name of that directory can be recovered with "module_dir" in File::ShareDir.

2) At the moment it seems that the keyboard pops only up if yo click the button with the touchscreen, not with a normal mouse. A normal mouse click opens the on screen keyboard only if the on screen keyboard is generally enabled in the Accessibility settings. I don't know why the button behaves in such manner, but the main purpose of this little script is to help touchscreen users!

COPYRIGHT AND LICENCE

Copyright 2016 Maximilian Lika.

This program is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 3 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this program.  If not, see
L<http://www.gnu.org/licenses/>.
