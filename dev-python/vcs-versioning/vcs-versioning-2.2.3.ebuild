# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="https://github.com/pypa/setuptools-scm"
SRC_URI="https://files.pythonhosted.org/packages/e9/bb/5270e8ffd3123051ac4fbbaabf61afb8f27819ac8ced0f0cc4b24137d30e/vcs_versioning-2.2.3.tar.gz -> vcs_versioning-2.2.3.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
"
S="${WORKDIR}/vcs_versioning-2.2.3"

# vim: filetype=ebuild
