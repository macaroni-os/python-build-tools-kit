# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="Poetry PEP 517 Build Backend"
HOMEPAGE="https://github.com/python-poetry/poetry-core"
SRC_URI="https://files.pythonhosted.org/packages/54/ef/a16c11de95b638341961765e072dfdd4c9a0be51d6b22d594c5f3255e4bb/poetry_core-2.2.1.tar.gz -> poetry_core-2.2.1.tar.gz"
SLOT="0"
KEYWORDS="*"
S="${WORKDIR}/poetry_core-2.2.1"

# vim: filetype=ebuild
