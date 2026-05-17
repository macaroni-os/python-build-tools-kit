# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers"
SRC_URI="https://files.pythonhosted.org/packages/35/68/175e7c07c5be13200387d5c0995b0da1e198e360047c08eb17d1002fcd92/trove_classifiers-2026.5.7.17.tar.gz -> trove_classifiers-2026.5.7.17.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/calver[${PYTHON_USEDEP}]
"
S="${WORKDIR}/trove_classifiers-2026.5.7.17"

# vim: filetype=ebuild
