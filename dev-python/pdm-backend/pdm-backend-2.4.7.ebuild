# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
DISTUTILS_USE_PEP517="standalone"
inherit distutils-r1

DESCRIPTION="The build backend used by PDM that supports latest packaging standards"
HOMEPAGE="https://github.com/pdm-project/pdm-backend"
SRC_URI="https://files.pythonhosted.org/packages/e2/38/d22c1050130b8cdf16fef76c99c59968086802744947f2813d45c69cca52/pdm_backend-2.4.7.tar.gz -> pdm_backend-2.4.7.tar.gz"
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
S="${WORKDIR}/pdm_backend-2.4.7"
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
