# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE="https://github.com/pypa/virtualenv"
SRC_URI="https://files.pythonhosted.org/packages/08/1c/69faa2e6a83484e2a8227bce5cfaa183941c5720f99c48f204931d286b07/virtualenv-21.7.8.tar.gz -> virtualenv-21.7.8.tar.gz"
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
	dev-python/hatch-vcs[${PYTHON_USEDEP}]
	<dev-python/distlib-1[${PYTHON_USEDEP}]
	<dev-python/filelock-4[${PYTHON_USEDEP}]
	<dev-python/platformdirs-5[${PYTHON_USEDEP}]
	dev-python/python-discovery[${PYTHON_USEDEP}]
"
S="${WORKDIR}/virtualenv-21.7.8"

# vim: filetype=ebuild
