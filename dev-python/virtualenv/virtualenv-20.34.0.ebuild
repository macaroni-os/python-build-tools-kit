# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE="https://github.com/pypa/virtualenv"
SRC_URI="https://files.pythonhosted.org/packages/1c/14/37fcdba2808a6c615681cd216fecae00413c9dab44fb2e57805ecf3eaee3/virtualenv-20.34.0.tar.gz -> virtualenv-20.34.0.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
S="${WORKDIR}/virtualenv-20.34.0"

# vim: filetype=ebuild
