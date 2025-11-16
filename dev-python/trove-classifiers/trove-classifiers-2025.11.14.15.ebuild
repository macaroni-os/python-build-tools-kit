# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers"
SRC_URI="https://files.pythonhosted.org/packages/bf/a9/880cccf76af9e7b322112f52e4e2dbb3534cbe671197b8f443a42189dfc7/trove_classifiers-2025.11.14.15.tar.gz -> trove_classifiers-2025.11.14.15.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/calver[${PYTHON_USEDEP}]
"
S="${WORKDIR}/trove_classifiers-2025.11.14.15"

# vim: filetype=ebuild
