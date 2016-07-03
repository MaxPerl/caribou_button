#!/usr/bin/env perl

use strict;
use warnings;
use utf8;
use Gtk3 -init;
use Glib ("TRUE","FALSE");

my $window = Gtk3::Window->new();
$window->set_default_size(200,40);
$window->set_icon_name('preferences-desktop-keyboard-shortcuts');
$window->signal_connect('delete-event' => sub {Gtk3->main_quit();});
$window->set_decorated(FALSE);
$window->set_keep_above(TRUE);
$window->set_accept_focus(FALSE);

my $screen = $window->get_screen();
my $screen_width = $screen->get_width();
my $screen_height = $screen->get_height();

# Unten rechts = (screen_width - size), (screen_height-height)
my $x_pos = $screen_width-200;
my $y_pos = $screen_height-50;

$window->move($x_pos,$y_pos);
$window->stick;

my $button = Gtk3::Button->new("Show Keyboard");
$button->signal_connect('clicked' => \&on_clicked);

# Let's style
my $styleprovider = Gtk3::CssProvider->new();
$styleprovider->load_from_data("
	* {
	color: white;
	background: black;
	}"
	);
my $default_screen = Gtk3::Gdk::Screen::get_default();
Gtk3::StyleContext::add_provider_for_screen($default_screen, $styleprovider, 600);


$window->add($button);
$window->show_all();

Gtk3->main();

sub on_clicked {
	qx(gdbus call -e -d org.gnome.Shell -o /org/gnome/Shell -m org.gnome.Shell.Eval string:'Main.keyboard.Show();');
}
