# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/22/56/2dbc1a6921dc3d3da86d34fc4f1b823e3013d7c72cec0cd71aae4bc60bb4/setuptools_scm-10.3.2.tar.gz -> setuptools_scm-10.3.2.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
BDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/vcs-versioning[${PYTHON_USEDEP}]
"
RDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
"
S="${WORKDIR}/setuptools_scm-10.3.2"

# vim: filetype=ebuild
