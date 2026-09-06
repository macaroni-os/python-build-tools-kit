# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by scm tags"
HOMEPAGE="https://github.com/pypa/setuptools-scm/"
SRC_URI="https://files.pythonhosted.org/packages/3c/87/1ff7adcf6e03021ae58ce401565be3c9b8c739a44d14a8253d38b3754117/setuptools_scm-10.2.3.tar.gz -> setuptools_scm-10.2.3.tar.gz"
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
S="${WORKDIR}/setuptools_scm-10.2.3"

# vim: filetype=ebuild
