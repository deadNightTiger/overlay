# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/pycharm-professional/pycharm-professional-4.0.6.ebuild,v 1.1 2015/04/28 20:30:31 xmw Exp $

EAPI=5

inherit eutils

DESCRIPTION="Intelligent C/C++ IDE with unique code assistance and analysis"
HOMEPAGE="http://www.jetbrains.com/clion/"
SRC_URI="http://download.jetbrains.com/cpp/${P}.tar.gz"
LICENSE="CLion_Preview_License"

SLOT="0"
KEYWORDS="~amd64"
IUSE=""

RDEPEND=">=virtual/jre-1.6"
DEPEND=""

RESTRICT="mirror strip"
QA_PREBUILT="opt/${PN}/bin/fsnotifier
	opt/${PN}/bin/fsnotifier64
	opt/${PN}/bin/libyjpagent-linux.so
	opt/${PN}/bin/libyjpagent-linux64.so
	opt/${PN}/bin/libbreakgen.so"

src_install() {
	insinto /opt/${PN}
	doins -r *

	fperms a+x /opt/${PN}/bin/{clion.sh,fsnotifier{,64},inspect.sh}

	dosym /opt/${PN}/bin/clion.sh /usr/bin/${PN}
	newicon "bin/${PN}.svg" ${PN}.svg
	make_desktop_entry ${PN} "${PN}" "${PN}"
}
