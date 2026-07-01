class Nora < Formula
  desc "Local Nora developer CLI"
  homepage "https://github.com/noralabsinc/nora"
  version "0.1.0"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.0/nora-cli-0.1.0-macos-arm64.tar.gz"
      sha256 "401b2d30a427a0fbc72e165a7011732de9f5d7a91071b9098cd02089bc70e8d2"
    else
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.0/nora-cli-0.1.0-macos-x86_64.tar.gz"
      sha256 "1ad3c8cd45a7c65c9ab3396543036b50f921039937465795b5934bd57aead869"
    end
  end

  on_linux do
    url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.0/nora-cli-0.1.0-linux-x86_64.tar.gz"
    sha256 "2a0e5c03bf766edfc1d0e5fe89d217b4d56f6c47017d967a25c7df5ce42b23ba"
  end

  def install
    bin.install "nora"
  end

  test do
    assert_match "nora", shell_output("#{bin}/nora --version")
  end
end
