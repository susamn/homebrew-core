class Pdm < Formula
  include Language::Python::Virtualenv

  desc "Modern Python package and dependency manager supporting the latest PEP standards"
  homepage "https://pdm-project.org"
  url "https://files.pythonhosted.org/packages/0f/72/e61e3c7c5f1db957fffdf6ce6244597090735ebbd97ce40542c0ecfcd030/pdm-2.23.0.tar.gz"
  sha256 "ec5ce439648b42b928f4afa91c2b6251e6a33f40cc83779d899ca970bd9eb131"
  license "MIT"
  head "https://github.com/pdm-project/pdm.git", branch: "main"

  bottle do
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6a00337c7d0ab06a9782c0adecd82fe765b0b398c57f0d0b062fbe899f6a0877"
    sha256 cellar: :any_skip_relocation, arm64_sonoma:  "6f7fe8f52fa89130d94def3840dd17a390b650c29116c850e82da87c9854963e"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "9c3797247dbdafaff3c91790455eb006e16ef9d4938c286574fbc5741198cf95"
    sha256 cellar: :any_skip_relocation, sonoma:        "76d9af93851c54e5eb75ebc6586126d8ac0e7fb3bb5c09c8b87518b20ce84efb"
    sha256 cellar: :any_skip_relocation, ventura:       "4cc7ae4472630bad4ad8c8dac1683b1b43199ce464a7a8c9673412f2902b019b"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "92d5e7393c1c7f0f8f51c57529ee1ebcecdff8e4bf1e513b4333f719281c08c6"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "5a81b827977bca9eb42546ce7682d42fccea0265fa09b4a9ee375bb731fdfa63"
  end

  depends_on "certifi"
  depends_on "python@3.13"

  resource "anyio" do
    url "https://files.pythonhosted.org/packages/95/7d/4c1bd541d4dffa1b52bd83fb8527089e097a106fc90b467a7313b105f840/anyio-4.9.0.tar.gz"
    sha256 "673c0c244e15788651a4ff38710fea9675823028a6f08a5eda409e0c9840a028"
  end

  resource "blinker" do
    url "https://files.pythonhosted.org/packages/21/28/9b3f50ce0e048515135495f198351908d99540d69bfdc8c1d15b73dc55ce/blinker-1.9.0.tar.gz"
    sha256 "b4ce2265a7abece45e7cc896e98dbebe6cead56bcf805a3d23136d145f5445bf"
  end

  resource "dep-logic" do
    url "https://files.pythonhosted.org/packages/fa/d8/11db71e3b8961152a777258cf627f9fe9bacce7ec2f2e07d2e8c6ad0cd90/dep_logic-0.4.11.tar.gz"
    sha256 "6084c81ce683943a60394ca0f8531ff803dfd955b5d7f52fb0571b53b930a182"
  end

  resource "distlib" do
    url "https://files.pythonhosted.org/packages/0d/dd/1bec4c5ddb504ca60fc29472f3d27e8d4da1257a854e1d96742f15c1d02d/distlib-0.3.9.tar.gz"
    sha256 "a60f20dea646b8a33f3e7772f74dc0b2d0772d2837ee1342a00645c81edf9403"
  end

  resource "filelock" do
    url "https://files.pythonhosted.org/packages/0a/10/c23352565a6544bdc5353e0b15fc1c563352101f30e24bf500207a54df9a/filelock-3.18.0.tar.gz"
    sha256 "adbc88eabb99d2fec8c9c1b229b171f18afa655400173ddc653d5d01501fb9f2"
  end

  resource "findpython" do
    url "https://files.pythonhosted.org/packages/2d/73/ab2c4fb7972145c1595c07837cffc1456c1510a908f5c8bda9745930ee60/findpython-0.6.3.tar.gz"
    sha256 "5863ea55556d8aadc693481a14ac4f3624952719efc1c5591abb0b4a9e965c94"
  end

  resource "h11" do
    url "https://files.pythonhosted.org/packages/f5/38/3af3d3633a34a3316095b39c8e8fb4853a28a536e55d347bd8d8e9a14b03/h11-0.14.0.tar.gz"
    sha256 "8f19fbbe99e72420ff35c00b27a34cb9937e902a8b810e2c88300c6f0a3b699d"
  end

  resource "hishel" do
    url "https://files.pythonhosted.org/packages/10/b9/d7328c8507e45e27784e9c1f440c2b900ae1e60a980480d869b6c0b2553c/hishel-0.1.1.tar.gz"
    sha256 "1f6421b78cc23fc43c610f651b7848c9b8eee2d29551d64a2ab0d45b319b6559"
  end

  resource "httpcore" do
    url "https://files.pythonhosted.org/packages/6a/41/d7d0a89eb493922c37d343b607bc1b5da7f5be7e383740b4753ad8943e90/httpcore-1.0.7.tar.gz"
    sha256 "8551cb62a169ec7162ac7be8d4817d561f60e08eaa485234898414bb5a8a0b4c"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/b1/df/48c586a5fe32a0f01324ee087459e112ebb7224f646c0b5023f5e79e9956/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "installer" do
    url "https://files.pythonhosted.org/packages/05/18/ceeb4e3ab3aa54495775775b38ae42b10a92f42ce42dfa44da684289b8c8/installer-0.7.0.tar.gz"
    sha256 "a26d3e3116289bb08216e0d0f7d925fcef0b0194eedfa0c944bcaaa106c4b631"
  end

  resource "markdown-it-py" do
    url "https://files.pythonhosted.org/packages/38/71/3b932df36c1a044d397a1f92d1cf91ee0a503d91e470cbd670aa66b07ed0/markdown-it-py-3.0.0.tar.gz"
    sha256 "e3f60a94fa066dc52ec76661e37c851cb232d92f9886b15cb560aaada2df8feb"
  end

  resource "mdurl" do
    url "https://files.pythonhosted.org/packages/d6/54/cfe61301667036ec958cb99bd3efefba235e65cdeb9c84d24a8293ba1d90/mdurl-0.1.2.tar.gz"
    sha256 "bb413d29f5eea38f31dd4754dd7377d4465116fb207585f97bf925588687c1ba"
  end

  resource "msgpack" do
    url "https://files.pythonhosted.org/packages/cb/d0/7555686ae7ff5731205df1012ede15dd9d927f6227ea151e901c7406af4f/msgpack-1.1.0.tar.gz"
    sha256 "dd432ccc2c72b914e4cb77afce64aab761c1137cc698be3984eee260bcb2896e"
  end

  resource "packaging" do
    url "https://files.pythonhosted.org/packages/d0/63/68dbb6eb2de9cb10ee4c9c14a0148804425e13c4fb20d61cce69f53106da/packaging-24.2.tar.gz"
    sha256 "c228a6dc5e932d346bc5739379109d49e8853dd8223571c7c5b55260edc0b97f"
  end

  resource "pbs-installer" do
    url "https://files.pythonhosted.org/packages/8b/67/365929546365e5fc69e090eeb5c1646bae6a8549d4d66959699e8d620562/pbs_installer-2025.3.17.tar.gz"
    sha256 "dde058f925b989c1d3bd90739c16ffd0e68732f7716e4d1e01ca480d00a67560"
  end

  resource "platformdirs" do
    url "https://files.pythonhosted.org/packages/b6/2d/7d512a3913d60623e7eb945c6d1b4f0bddf1d0b7ada5225274c87e5b53d1/platformdirs-4.3.7.tar.gz"
    sha256 "eb437d586b6a0986388f0d6f74aa0cde27b48d0e3d66843640bfb6bdcdb6e351"
  end

  resource "pygments" do
    url "https://files.pythonhosted.org/packages/7c/2d/c3338d48ea6cc0feb8446d8e6937e1408088a72a39937982cc6111d17f84/pygments-2.19.1.tar.gz"
    sha256 "61c16d2a8576dc0649d9f39e089b5f02bcd27fba10d8fb4dcc28173f7a45151f"
  end

  resource "pyproject-hooks" do
    url "https://files.pythonhosted.org/packages/e7/82/28175b2414effca1cdac8dc99f76d660e7a4fb0ceefa4b4ab8f5f6742925/pyproject_hooks-1.2.0.tar.gz"
    sha256 "1e859bd5c40fae9448642dd871adf459e5e2084186e8d2c2a79a824c970da1f8"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/88/2c/7bb1416c5620485aa793f2de31d3df393d3686aa8a8506d11e10e13c5baf/python_dotenv-1.1.0.tar.gz"
    sha256 "41f90bc6f5f177fb41f53e87666db362025010eb28f60a01c9143bfa33a2b2d5"
  end

  resource "resolvelib" do
    url "https://files.pythonhosted.org/packages/79/e6/53dc936ddd11353967e5cb7361f537042914745fccfcaa3475505c9ac596/resolvelib-1.1.0.tar.gz"
    sha256 "b68591ef748f58c1e2a2ac28d0961b3586ae8b25f60b0ba9a5e4f3d87c1d6a79"
  end

  resource "rich" do
    url "https://files.pythonhosted.org/packages/a1/53/830aa4c3066a8ab0ae9a9955976fb770fe9c6102117c8ec4ab3ea62d89e8/rich-14.0.0.tar.gz"
    sha256 "82f1bc23a6a21ebca4ae0c45af9bdbc492ed20231dcb63f297d6d1021a9d5725"
  end

  resource "shellingham" do
    url "https://files.pythonhosted.org/packages/58/15/8b3609fd3830ef7b27b655beb4b4e9c62313a4e8da8c676e142cc210d58e/shellingham-1.5.4.tar.gz"
    sha256 "8dbca0739d487e5bd35ab3ca4b36e11c4078f3a234bfce294b0a0291363404de"
  end

  resource "sniffio" do
    url "https://files.pythonhosted.org/packages/a2/87/a6771e1546d97e7e041b6ae58d80074f81b7d5121207425c964ddf5cfdbd/sniffio-1.3.1.tar.gz"
    sha256 "f4324edc670a0f49750a81b895f35c3adb843cca46f0530f79fc1babb23789dc"
  end

  resource "socksio" do
    url "https://files.pythonhosted.org/packages/f8/5c/48a7d9495be3d1c651198fd99dbb6ce190e2274d0f28b9051307bdec6b85/socksio-1.0.0.tar.gz"
    sha256 "f88beb3da5b5c38b9890469de67d0cb0f9d494b78b106ca1845f96c10b91c4ac"
  end

  resource "tomlkit" do
    url "https://files.pythonhosted.org/packages/b1/09/a439bec5888f00a54b8b9f05fa94d7f901d6735ef4e55dcec9bc37b5d8fa/tomlkit-0.13.2.tar.gz"
    sha256 "fff5fe59a87295b278abd31bec92c15d9bc4a06885ab12bcea52c71119392e79"
  end

  resource "truststore" do
    url "https://files.pythonhosted.org/packages/0f/a7/b7a43228762966a13598a404f3dfb4803ea29a906f449d8b0e73ed0bcd30/truststore-0.10.1.tar.gz"
    sha256 "eda021616b59021812e800fa0a071e51b266721bef3ce092db8a699e21c63539"
  end

  resource "unearth" do
    url "https://files.pythonhosted.org/packages/c6/34/64d3ba3f69ef9d8afeed59432ba7fac495023408053294cb124aa3c5b356/unearth-0.17.3.tar.gz"
    sha256 "32e96c9df63c563a118d411dfb4f9c672f181a410977f6765c0ed430b0d32784"
  end

  resource "virtualenv" do
    url "https://files.pythonhosted.org/packages/38/e0/633e369b91bbc664df47dcb5454b6c7cf441e8f5b9d0c250ce9f0546401e/virtualenv-20.30.0.tar.gz"
    sha256 "800863162bcaa5450a6e4d721049730e7f2dae07720e0902b0e4040bd6f9ada8"
  end

  def install
    virtualenv_install_with_resources
    generate_completions_from_executable(bin/"pdm", "completion")
  end

  test do
    (testpath/"pyproject.toml").write <<~TOML
      [project]
      name = "testproj"
      requires-python = ">=3.9"
      version = "1.0"
      license = {text = "MIT"}

      [build-system]
      requires = ["pdm-backend"]
      build-backend = "pdm.backend"
    TOML
    system bin/"pdm", "add", "requests==2.31.0"
    assert_match "dependencies = [\"requests==2.31.0\"]", (testpath/"pyproject.toml").read
    assert_path_exists testpath/"pdm.lock"
    assert_match "name = \"urllib3\"", (testpath/"pdm.lock").read
    output = shell_output("#{bin}/pdm run python -c 'import requests;print(requests.__version__)'")
    assert_equal "2.31.0", output.strip
  end
end
