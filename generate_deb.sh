#!/bin/bash -e

outputdir="$(readlink -f outputdir)"
depends="gnome-icon-theme monodoc-manual pkg-config mono-runtime-sgen xterm mono-runtime libc6 libcairo2 libfontconfig1 libgconf2.0-cil libglade2.0-cil libglib2.0-0 libglib2.0-cil libgnome-vfs2.0-cil libgnome2.24-cil libgtk2.0-0 libgtk2.0-cil libgtkspell0 libmono-cairo4.0-cil libmono-corlib4.5-cil libmono-microsoft-build-engine4.0-cil libmono-microsoft-build-framework4.0-cil libmono-microsoft-build-utilities-v4.0-4.0-cil libmono-microsoft-csharp4.0-cil libmono-microsoft-web-infrastructure1.0-cil libmono-posix4.0-cil libmono-sharpzip4.84-cil libmono-system-componentmodel-dataannotations4.0-cil libmono-system-configuration4.0-cil libmono-system-core4.0-cil libmono-system-data-entity4.0-cil libmono-system-data-linq4.0-cil libmono-system-runtime-caching4.0-cil libmono-system-runtime-serialization4.0-cil libmono-system-runtime4.0-cil libmono-system-security4.0-cil libmono-system-servicemodel4.0a-cil libmono-system-web-extensions4.0-cil libmono-system-web-services4.0-cil libmono-system-web4.0-cil libmono-system-windows-forms4.0-cil libmono-system-xaml4.0-cil libmono-system-xml-linq4.0-cil libmono-system-xml4.0-cil libmono-system4.0-cil libmono-windowsbase4.0-cil libpango1.0-0 libwebkitgtk-1.0-0 monodoc-base libglade2.0-cil-dev libgtk2.0-cil-dev mono-devel"

depends="-d $(echo $depends | sed 's/ / -d /g')"

mkdir -p $outputdir
docker run -it --rm -v $outputdir:/output gz/monodevelop:fpm $depends $@