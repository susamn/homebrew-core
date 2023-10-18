class CryticCompile < Formula
  include Language::Python::Virtualenv

  desc "Abstraction layer for smart contract build systems"
  homepage "https://github.com/crytic/crytic-compile"
  url "https://files.pythonhosted.org/packages/3a/9c/e100d2dbc90471010716e56766ef6608717c44d7278eea3dacb5bb48276a/crytic-compile-0.3.5.tar.gz"
  sha256 "f9b2bf3dc8c99fbc58c4ae6f82b3e8e378f56e107e37fd8786a36567dd68fa6e"
  license "AGPL-3.0-only"
  head "https://github.com/crytic/crytic-compile.git", branch: "master"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sonoma:   "3b9012434ba27379466d4780008f0bf5d325040e55285bbf6e8776f7c113417a"
    sha256 cellar: :any_skip_relocation, arm64_ventura:  "41ff861719eb6cef6add9dbbe41504a4ee2dfde9d9c901110f32adc7fd7d9996"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "78ca96c94df6c1979e04d9b9700b8c3ee7f64e33f0a2774ed67a3686226529be"
    sha256 cellar: :any_skip_relocation, arm64_big_sur:  "d75aaea9d3a159b14928ea27025cb489939cef779694b77656e03dd57e8ea386"
    sha256 cellar: :any_skip_relocation, sonoma:         "d321cf4cc3905a8d1bfa9a4366b5885ce9a0703ff04ed7421875fb608b89bae5"
    sha256 cellar: :any_skip_relocation, ventura:        "134bf16837b48d808139381d83375b1ae0a55cd3b49e1b6cbcf33216dd5d6323"
    sha256 cellar: :any_skip_relocation, monterey:       "14796a097a735cadbbbf01ffe2d9fb2f002b4d5b88dee3b79333197d0ef1396e"
    sha256 cellar: :any_skip_relocation, big_sur:        "4d7a4f5f941967b3e92ce441df5dbfaa9027a67cc4673e968c9ff2a81eb40575"
    sha256 cellar: :any_skip_relocation, x86_64_linux:   "91b3920f61e02d5d3e6f75396e7337f34938ddadfa093a05299b35b83b3e66dd"
  end

  depends_on "python-toml"
  depends_on "python@3.11"
  depends_on "solc-select"

  resource "cbor2" do
    url "https://files.pythonhosted.org/packages/d9/69/de486293f5211d2e8fe1a19854e69f2811a18448162c52b48c67f8fbcac3/cbor2-5.4.6.tar.gz"
    sha256 "b893500db0fe033e570c3adc956af6eefc57e280026bd2d86fd53da9f1e594d7"
  end

  def install
    virtualenv_install_with_resources
    site_packages = Language::Python.site_packages("python3.11")
    solc_select = Formula["solc-select"].opt_libexec
    (libexec/site_packages/"homebrew-solc-select.pth").write solc_select/site_packages
  end

  test do
    resource "testdata" do
      url "https://github.com/crytic/slither/raw/d0a4f5595d7177b3b7d4bd35e1384bf35ebc22d4/tests/ast-parsing/compile/variable-0.8.0.sol-0.8.15-compact.zip", using: :nounzip
      sha256 "2f165f629882d0250d03a56cb67a84e9741375349195915a04385b0666394478"
    end

    resource("testdata").stage do
      system bin/"crytic-compile", "variable-0.8.0.sol-0.8.15-compact.zip", \
             "--export-format=solc", "--export-dir=#{testpath}/export"
    end

    assert_predicate testpath/"export/combined_solc.json", :exist?
  end
end
