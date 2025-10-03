# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Distribution-building parts of Flit. See flit package for more information"
HOMEPAGE="https://github.com/pypa/flit"
SRC_URI="https://files.pythonhosted.org/packages/69/59/b6fc2188dfc7ea4f936cd12b49d707f66a1cb7a1d2c16172963534db741b/flit_core-3.12.0.tar.gz -> flit_core-3.12.0.tar.gz"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/flit_core-3.12.0"

# vim: filetype=ebuild
