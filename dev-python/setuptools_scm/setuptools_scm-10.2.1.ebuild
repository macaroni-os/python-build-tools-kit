# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/5d/b1/d0b97ffd2856a7d19c63024a89fb84813cb9d2ed7fa8fdbedf9e2f13a9ab/setuptools_scm-10.2.1.tar.gz -> setuptools_scm-10.2.1.tar.gz"
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
S="${WORKDIR}/setuptools_scm-10.2.1"

# vim: filetype=ebuild
