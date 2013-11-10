# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="5"

inherit git-r3

DESCRIPTION="Automatically create, rotate, and destroy periodic ZFS snapshots"
HOMEPAGE="https://github.com/zfsonlinux/zfs-auto-snapshot"
SRC_URI=""
EGIT_REPO_URI="git://github.com/zfsonlinux/zfs-auto-snapshot.git
	https://github.com/zfsonlinux/zfs-auto-snapshot.git"

SLOT="0"

LICENSE="GPL-2"
KEYWORDS=""

RDEPEND="sys-fs/zfs
	virtual/cron"

src_install() {
	emake DESTDIR="${D}" install
	dodoc README
}
