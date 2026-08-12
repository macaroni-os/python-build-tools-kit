# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Easily download, build, install, upgrade, and uninstall Python packages"
HOMEPAGE="https://github.com/pypa/setuptools"
SRC_URI="https://files.pythonhosted.org/packages/82/f3/748f4d6f65d1756b9ae577f329c951cda23fb900e4de9f70900ced962085/setuptools-82.0.0.tar.gz -> setuptools-82.0.0.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="app-arch/unzip
	
"
PDEPEND="
	>=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]
"
S="${WORKDIR}/setuptools-82.0.0"
SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
}


# vim: filetype=ebuild
