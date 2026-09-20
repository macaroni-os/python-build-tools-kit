# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Distribution-building parts of Flit. See flit package for more information"
HOMEPAGE="https://github.com/pypa/flit"
SRC_URI="https://files.pythonhosted.org/packages/e7/91/add211b38c357bf1b94900b4f79c34661a92be65c0243d2b0a3393c5092d/flit_core-4.1.0.tar.gz -> flit_core-4.1.0.tar.gz"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/flit_core-4.1.0"

# vim: filetype=ebuild
