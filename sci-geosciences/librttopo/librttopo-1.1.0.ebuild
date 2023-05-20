# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Exposes an API to create and manage standard (ISO 13249 aka SQL/MM) topologies"
HOMEPAGE="https://git.osgeo.org/gitea/rttopo/librttopo"
SRC_URI="https://git.osgeo.org/gitea/rttopo/librttopo/archive/${P}.tar.gz"
S="${WORKDIR}/librttopo"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_configure() {
	./autogen.sh
	econf
}

src_install() {
	default
	find "${D}" -name '*.la' -delete || die
}
