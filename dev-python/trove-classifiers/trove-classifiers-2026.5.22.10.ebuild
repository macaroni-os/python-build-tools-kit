# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers"
SRC_URI="https://files.pythonhosted.org/packages/86/b6/1c41aa221b157b624ea1a72e975404ef228724d249011ee411ac211a615e/trove_classifiers-2026.5.22.10.tar.gz -> trove_classifiers-2026.5.22.10.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/calver[${PYTHON_USEDEP}]
"
S="${WORKDIR}/trove_classifiers-2026.5.22.10"

# vim: filetype=ebuild
