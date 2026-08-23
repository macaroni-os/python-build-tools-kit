# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="https://github.com/pypa/setuptools-scm"
SRC_URI="https://files.pythonhosted.org/packages/a6/cb/6f5c4ed4da249ef5eea34ddfbb38174c5533ff3da8703b8252bf44b80396/vcs_versioning-2.3.1.tar.gz -> vcs_versioning-2.3.1.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
"
S="${WORKDIR}/vcs_versioning-2.3.1"

# vim: filetype=ebuild
