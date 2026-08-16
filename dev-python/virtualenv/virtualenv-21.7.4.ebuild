# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE="https://github.com/pypa/virtualenv"
SRC_URI="https://files.pythonhosted.org/packages/2d/dc/a6eb1ddfa7f1e390fa599b078453c97edb3f6f846b34fb4eac3e8ea16401/virtualenv-21.7.4.tar.gz -> virtualenv-21.7.4.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	<dev-python/distlib-1[${PYTHON_USEDEP}]
	<dev-python/filelock-4[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5[${PYTHON_USEDEP}]
	dev-python/python-discovery[${PYTHON_USEDEP}]
"
DEPEND="
	<dev-python/distlib-1[${PYTHON_USEDEP}]
	<dev-python/filelock-4[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5[${PYTHON_USEDEP}]
	dev-python/python-discovery[${PYTHON_USEDEP}]
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
"
S="${WORKDIR}/virtualenv-21.7.4"

# vim: filetype=ebuild
