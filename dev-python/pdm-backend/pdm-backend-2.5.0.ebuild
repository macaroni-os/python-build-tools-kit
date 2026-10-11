# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The build backend used by PDM that supports latest packaging standards"
HOMEPAGE="https://github.com/pdm-project/pdm-backend"
SRC_URI="https://files.pythonhosted.org/packages/fc/d5/a82f533ed51f91a2183faf67a1fcb3b759615ffeca95d05b3e7648bf84bf/pdm_backend-2.5.0.tar.gz -> pdm_backend-2.5.0.tar.gz"
SLOT="0"
KEYWORDS="*"
RDEPEND="
	>=dev-python/packaging-24.0[${PYTHON_USEDEP}]
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/tomli-w[${PYTHON_USEDEP}]
"
DEPEND="
	>=dev-python/packaging-24.0[${PYTHON_USEDEP}]
	dev-python/editables[${PYTHON_USEDEP}]
	dev-python/importlib_metadata[${PYTHON_USEDEP}]
	dev-python/pyproject-metadata[${PYTHON_USEDEP}]
	dev-python/tomli[${PYTHON_USEDEP}]
	dev-python/tomli-w[${PYTHON_USEDEP}]
	dev-python/zipp[${PYTHON_USEDEP}]
"
S="${WORKDIR}/pdm_backend-2.5.0"
src_prepare() {
	  rm -r src/pdm/backend/_vendor || die
	  find -name '*.py' -exec sed \
	      -e 's:from pdm\.backend\._vendor\.:from :' \
	      -e 's:from pdm\.backend\._vendor ::' \
	      -e 's:import pdm\.backend\._vendor\.:import :' \
	      -i {} + || die
	  distutils-r1_src_prepare
}


# vim: filetype=ebuild
