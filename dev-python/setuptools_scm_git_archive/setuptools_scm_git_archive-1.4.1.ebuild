# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="setuptools_scm plugin for git archives"
HOMEPAGE="https://github.com/Changaco/setuptools_scm_git_archive/"
SRC_URI="https://files.pythonhosted.org/packages/47/d6/c9a8d1ea95613f79b9b914cf9a5e8e420b7625fc54137c1d7c9cbbda5adf/setuptools_scm_git_archive-1.4.1.tar.gz -> setuptools_scm_git_archive-1.4.1.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
S="${WORKDIR}/setuptools_scm_git_archive-1.4.1"

# vim: filetype=ebuild
