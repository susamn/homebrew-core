class Uff < Formula
  desc "Universal file search with fd, fzf, ripgrep"
  homepage "https://github.com/susamn/uff"
  url "https://github.com/susamn/uff/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b430df13dc39286c6027e7d2530d4fcc3e824484272c8694f2e0a63cda6fd6c5"
  license "MIT"

  depends_on "fd"
  depends_on "fzf"
  depends_on "ripgrep"

  def install
    bin.install "uff.sh" => "uff"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/uff -h")
  end
end
