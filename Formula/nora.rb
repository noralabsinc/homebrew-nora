class Nora < Formula
  desc "Local Nora developer CLI"
  homepage "https://github.com/noralabsinc/nora"
  version "0.1.2"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.2/nora-cli-0.1.2-macos-arm64.tar.gz"
      sha256 "eea7d5674b95fc75076c6f7211900dc4370cfb8d43282de19fc4d474d6057dea"
    else
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.2/nora-cli-0.1.2-macos-x86_64.tar.gz"
      sha256 "97edb13bbba8deb785f9de62cc0ccb92147374eeb96b7b41f7ec8b261685ad62"
    end
  end

  on_linux do
    url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.2/nora-cli-0.1.2-linux-x86_64.tar.gz"
    sha256 "31a8bf6de8c3d4eaf0d6ed82437acc68a41a9a5c023516d1f191d021a87767f0"
  end

  def install
    bin.install "nora"
  end

  test do
    assert_match "nora", shell_output("#{bin}/nora --version")
  end
end
