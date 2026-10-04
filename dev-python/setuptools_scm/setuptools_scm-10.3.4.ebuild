# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/85/d8/fc143f88819ccf10ba2388ba86732ee2de193e578234e25a783f6cc14bf7/setuptools_scm-10.3.4.tar.gz -> setuptools_scm-10.3.4.tar.gz"
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
S="${WORKDIR}/setuptools_scm-10.3.4"

# vim: filetype=ebuild
