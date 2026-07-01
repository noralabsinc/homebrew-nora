class Nora < Formula
  desc "Local Nora developer CLI"
  homepage "https://github.com/noralabsinc/nora"
  version "0.1.1"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.1/nora-cli-0.1.1-macos-arm64.tar.gz"
      sha256 "356307538ba51ead6f58a79ec4fa683041d89f09b42d970235d1e692e5cd8c2e"
    else
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.1/nora-cli-0.1.1-macos-x86_64.tar.gz"
      sha256 "aa0b6c6cfd2aeee438846ab0503a330b85bf2c0caebeb65cef0f47fd30f479c4"
    end
  end

  on_linux do
    url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.1/nora-cli-0.1.1-linux-x86_64.tar.gz"
    sha256 "019cb52ee5c80297cc910ca4ed61a80e523d42cde0bb4612309b371a2116d95e"
  end

  def install
    bin.install "nora"
  end

  test do
    assert_match "nora", shell_output("#{bin}/nora --version")
  end
end
