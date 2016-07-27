%define upstream_name    App-cariboubutton
%define upstream_version 0.01

%{?perl_default_filter}

Name:       perl-%{upstream_name}
Version:    %perl_convert_version %{upstream_version}
Release:    %mkrel 1

Summary:    A "Show Keyboard" Button for the GNOME Caribou on screen keyboard
License:    GPLv1+ or Artistic
Group:      Development/Perl
Url:        http://metacpan.org/release/%{upstream_name}
Source0:    http://www.cpan.org/modules/by-module//%{upstream_name}-%{upstream_version}.tar.gz

BuildRequires: perl(ExtUtils::MakeMaker)
BuildRequires: perl(ExtUtils::MakeMaker)
BuildRequires: perl(File::ShareDir::Install)
BuildRequires: perl(Gtk3)
BuildArch: noarch

%description
A "Show Keyboard" Button for the GNOME Caribou on screen keyboard. The
button is displayed always on top at the right bottom of the screen and is
useful for touchscreen users if the Caribou on screen keyboard doesn't pop
up (e.g. at non Gtk3 Applications such as Firefox or Chromium).

IMPORTANT NOTES
    * 1)

      To autostart the caribou button you have to create a file
      cariboubutton.desktop in the directory
      /$HOMEDIRECTORY/.config/autostart with the following content:

%prep
%setup -q -n %{upstream_name}-%{upstream_version}

%build
%{__perl} Makefile.PL INSTALLDIRS=vendor

%make

%check
%make test

%install
%makeinstall_std

%files
%doc Changes README META.yml META.json
%{_mandir}/man3/*
%perl_vendorlib/*
/usr/bin/cariboubutton.pl

%changelog
* Wed Jul 27 2016 cpan2dist 0.01-1mga
- initial mageia release, generated with cpan2dist
