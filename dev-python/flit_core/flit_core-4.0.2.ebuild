# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Distribution-building parts of Flit. See flit package for more information"
HOMEPAGE="https://github.com/pypa/flit"
SRC_URI="https://files.pythonhosted.org/packages/46/ef/34533186e76c526d9ec17a1ad9a10c7354cbfb20f51583cc36dfe4bdccd0/flit_core-4.0.2.tar.gz -> flit_core-4.0.2.tar.gz"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/flit_core-4.0.2"

# vim: filetype=ebuild
