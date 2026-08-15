# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Most extensible Python build backend with support for C/C++ extension modules"
HOMEPAGE="https://github.com/pypa/setuptools"
SRC_URI="https://files.pythonhosted.org/packages/4f/db/cfac1baf10650ab4d1c111714410d2fbb77ac5a616db26775db562c8fab2/setuptools-82.0.1.tar.gz -> setuptools-82.0.1.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="app-arch/unzip
	
"
PDEPEND="
	>=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]
"
S="${WORKDIR}/setuptools-82.0.1"
SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
}


# vim: filetype=ebuild
