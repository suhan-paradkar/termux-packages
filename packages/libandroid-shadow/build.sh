TERMUX_PKG_HOMEPAGE=https://man7.org/linux/man-pages/man3wordexp.3.html
TERMUX_PKG_DESCRIPTION="Shared library for the shadow(3) system function"
TERMUX_PKG_LICENSE="GPL-2.0"
TERMUX_PKG_MAINTAINER="@termux"
TERMUX_PKG_VERSION=0.1
TERMUX_PKG_SKIP_SRC_EXTRACT=true
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_make() {
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/lckpwdf.c
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/fgetspent.c
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/getspent.c
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/fgetspent_r.c
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/getspent_r.c
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/getspnam.c
	$CC $CFLAGS $CPPFLAGS -I$TERMUX_PKG_BUILDER_DIR -c $TERMUX_PKG_BUILDER_DIR/getspnam_r.c
	$CC $LDFLAGS -shared lckpwdf.o -o libandroid-shadow.so
	$CC $LDFLAGS -shared fgetspent.o -o libandroid-shadow.so
	$AR rcu libandroid-shadow.a lckpdf.o fgetspent.o
}

termux_step_make_install() {
	install -Dm600 $TERMUX_PKG_BUILDER_DIR/shadow.h $TERMUX_PREFIX/include/shadow.h
	install -Dm600 libandroid-shadow.a $TERMUX_PREFIX/lib/libandroid-shadow.a
	install -Dm600 libandroid-shadow.so $TERMUX_PREFIX/lib/libandroid-shadow.so
}
