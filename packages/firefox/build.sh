TERMUX_PKG_HOMEPAGE=https://www.mozilla.org/en-US/firefox/
TERMUX_PKG_DESCRIPTION="Open source privacy browser"
TERMUX_PKG_LICENSE="MPL-2.0"
TERMUX_PKG_VERSION=83.0
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_SRCURL=https://github.com/mozilla/gecko-dev.git
NOCONFIGURE=true
TERMUX_HOST_PLATFORM=$TERMUX_ARCH-linux-gnu
termux_step_get_source() {
	curl https://hg.mozilla.org/mozilla-central/raw-file/default/python/mozboot/bin/bootstrap.py -O
	python3 bootstrap.py
	rm bootstrap.py
	mv mozilla-unified/* src/
	rm -r mozilla-unified
}
termux_step_make() {
	./mach build
}
termux_step_make_install() {
	./mach run
}
