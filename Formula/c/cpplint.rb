class Cpplint < Formula
  include Language::Python::Virtualenv

  desc "Static code checker for C++"
  homepage "https://pypi.org/project/cpplint/"
  url "https://files.pythonhosted.org/packages/31/2e/cf42e2d54f2472ce38d62df4067342669de9438ef145267d6d499cf49a5e/cpplint-2.0.1.tar.gz"
  sha256 "c258baa861a636421346f3db20b3b125c76b0fa8fc91857ee637a603101426c3"
  license "Apache-2.0"

  bottle do
    rebuild 1
    sha256 cellar: :any_skip_relocation, all: "e54c0d69ee5326844ebd9b9c1f6278292c7c7bea77b589b3dba81a25ce8cbf0b"
  end

  depends_on "python@3.13"

  def install
    virtualenv_install_with_resources

    # install test data
    pkgshare.install "samples"
  end

  test do
    output = shell_output("#{bin}/cpplint --version")
    assert_match "cpplint #{version}", output.strip

    test_file = pkgshare/"samples/v8-sample/src/interface-descriptors.h"
    output = shell_output("#{bin}/cpplint #{test_file} 2>&1", 1)
    assert_match "Total errors found: 2", output
  end
end
