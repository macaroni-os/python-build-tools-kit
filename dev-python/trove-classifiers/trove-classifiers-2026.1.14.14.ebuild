# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers"
SRC_URI="https://files.pythonhosted.org/packages/d8/43/7935f8ea93fcb6680bc10a6fdbf534075c198eeead59150dd5ed68449642/trove_classifiers-2026.1.14.14.tar.gz -> trove_classifiers-2026.1.14.14.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/calver[${PYTHON_USEDEP}]
"
S="${WORKDIR}/trove_classifiers-2026.1.14.14"

# vim: filetype=ebuild
