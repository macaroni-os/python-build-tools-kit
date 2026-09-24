# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Virtual Python Environment builder"
HOMEPAGE="https://github.com/pypa/virtualenv"
SRC_URI="https://files.pythonhosted.org/packages/2f/5d/42254e91a9203a13d95ab4f5211f4cdda52b82fc3546340f7fb33a642173/virtualenv-21.9.0.tar.gz -> virtualenv-21.9.0.tar.gz"
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
S="${WORKDIR}/virtualenv-21.9.0"

# vim: filetype=ebuild
