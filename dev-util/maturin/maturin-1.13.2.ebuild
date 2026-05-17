# Distributed under the terms of the GNU General Public License v2
# Autogen by MARK Devkit

EAPI=7
PYTHON_COMPAT=( python3+ )
ECARGO_BUNDLE_POSTFIX="mark-rust-bundle"
CARGO_OPTIONAL="yes"
MEMSAVER_FACTOR=10000000
inherit cargo distutils-r1 memsaver

DESCRIPTION="Build and publish crates with pyo3, cffi and uniffi bindings as well as rust binaries as python packages"
HOMEPAGE="https://github.com/pyo3/maturin"
SRC_URI="
https://files.pythonhosted.org/packages/62/72/75624ab4af4c42e026ba938582dbad5fe570977f4e8b6ea063b9659ba3b9/maturin-1.13.2.tar.gz -> maturin-1.13.2.tar.gz
mirror://macaroni/maturin-1.13.2-mark-rust-bundle.tar.xz -> maturin-1.13.2-mark-rust-bundle.tar.xz"
SLOT="0"
KEYWORDS="*"
BDEPEND="virtual/rust
	
"
RDEPEND="
	dev-python/tomli[${PYTHON_USEDEP}]
"
DEPEND="
	>=dev-python/setuptools-rust-1.11.1[${PYTHON_USEDEP}]
"
S="${WORKDIR}/maturin-1.13.2"
src_unpack() {
	cargo_src_unpack
}
src_prepare() {
	distutils-r1_src_prepare
	# we build the Rust executable (just once) via cargo_src_compile
	sed -i -e '/setuptools_rust/d' -e '/rust_extensions/d' setup.py || die
	# Fix stupid project.classifiers errors!
	sed -i -e '/GraalPy/d' pyproject.toml || die
}
src_configure() {
	# Let memsaver adjust MAKEOPTS based on available RAM/cores FIRST
	memsaver_src_configure
	# Regenerate cargo config so it picks up the reduced job count
	cargo_gen_config
	export OPENSSL_NO_VENDOR=1
	export ZSTD_SYS_USE_PKG_CONFIG=1
	local myfeatures=(
	  full
	  password-storage
	  native-tls
	)
	cargo_src_configure --no-default-features
}
src_compile() {
	cargo_src_compile
	distutils-r1_src_compile
}
src_install() {
	dobin target/release/maturin
	dodoc Changelog.md README.md
	local maturin=target/release/maturin
	mkdir -p "${D}"/usr/share/{bash-completion/completions/,fish/vendor_completions.d/,zsh/site-functions/} || die
	"${maturin}" completions bash > "${D}"/usr/share/bash-completion/${PN} || die
	"${maturin}" completions fish > "${D}"/usr/share/fish/vendor_completions.d//${PN}.fish || die
	"${maturin}" completions zsh > "${D}"/usr/share/zsh/site-functions/_${PN} || die
	distutils-r1_src_install
}


# vim: filetype=ebuild
