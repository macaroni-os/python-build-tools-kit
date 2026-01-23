# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="hatchling"
inherit distutils-r1

DESCRIPTION="Hatch plugin for versioning with your preferred VCS"
HOMEPAGE="https://github.com/ofek/hatch-vcs"
SRC_URI="https://files.pythonhosted.org/packages/6b/b0/4cc743d38adbee9d57d786fa496ed1daadb17e48589b6da8fa55717a0746/hatch_vcs-0.5.0.tar.gz -> hatch_vcs-0.5.0.tar.gz"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
DEPEND="
	dev-python/setuptools_scm[${PYTHON_USEDEP}]
"
S="${WORKDIR}/hatch_vcs-0.5.0"

# vim: filetype=ebuild
