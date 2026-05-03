# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="setuptools"
inherit distutils-r1

DESCRIPTION="Canonical source for classifiers on PyPI (pypi.org)."
HOMEPAGE="https://github.com/pypa/trove-classifiers"
SRC_URI="https://files.pythonhosted.org/packages/04/af/88fdebf242bc7bc4957c96c5358a2b2b0f07e5001401906783a521ea9f54/trove_classifiers-2026.4.28.13.tar.gz -> trove_classifiers-2026.4.28.13.tar.gz"
SLOT="0"
KEYWORDS="*"
DEPEND="
	dev-python/calver[${PYTHON_USEDEP}]
"
S="${WORKDIR}/trove_classifiers-2026.4.28.13"

# vim: filetype=ebuild
