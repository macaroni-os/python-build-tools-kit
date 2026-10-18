# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="the blessed package to manage your versions by vcs metadata"
HOMEPAGE="https://github.com/pypa/setuptools-scm"
SRC_URI="https://files.pythonhosted.org/packages/ad/e7/2a691db7d076b75d099fdba1a14cd966931f2aeb591e77f6d22f15097326/vcs_versioning-2.6.0.tar.gz -> vcs_versioning-2.6.0.tar.gz"
LICENSE="MIT"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	dev-python/packaging[${PYTHON_USEDEP}]
"
S="${WORKDIR}/vcs_versioning-2.6.0"

# vim: filetype=ebuild
