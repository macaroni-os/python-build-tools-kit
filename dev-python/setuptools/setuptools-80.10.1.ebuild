# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_SETUPTOOLS="no"
inherit distutils-r1

DESCRIPTION="Easily download, build, install, upgrade, and uninstall Python packages"
HOMEPAGE="https://github.com/pypa/setuptools"
SRC_URI="https://files.pythonhosted.org/packages/86/ff/f75651350db3cf2ef767371307eb163f3cc1ac03e16fdf3ac347607f7edb/setuptools-80.10.1.tar.gz -> setuptools-80.10.1.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="app-arch/unzip
	
"
PDEPEND="
	>=dev-python/certifi-2016.9.26[${PYTHON_USEDEP}]
"
S="${WORKDIR}/setuptools-80.10.1"
SETUPTOOLS_USE_DISTUTILS=stdlib
python_install() {
	export DISTRIBUTE_DISABLE_VERSIONED_EASY_INSTALL_SCRIPT=1
	distutils-r1_python_install
}


# vim: filetype=ebuild
