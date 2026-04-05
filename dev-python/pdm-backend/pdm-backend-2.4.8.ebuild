# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The build backend used by PDM that supports latest packaging standards"
HOMEPAGE="https://github.com/pdm-project/pdm-backend"
SRC_URI="https://files.pythonhosted.org/packages/7c/7e/6d441c8739a30820ec59517a88326789c201ae43a344b2ffb02fb2702d8e/pdm_backend-2.4.8.tar.gz -> pdm_backend-2.4.8.tar.gz"
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
S="${WORKDIR}/pdm_backend-2.4.8"
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
