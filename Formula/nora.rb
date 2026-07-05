class Nora < Formula
  desc "Local Nora developer CLI"
  homepage "https://github.com/noralabsinc/nora"
  version "0.1.4"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.4/nora-cli-0.1.4-macos-arm64.tar.gz"
      sha256 "4cdaea634472513a351e0c0312fa77e720ebb01d3c74349a375392c528c889d9"
    else
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.4/nora-cli-0.1.4-macos-x86_64.tar.gz"
      sha256 "3e734cc1b915fb2321c2d98e7137dc54426c99c3529ebadc5d5793eff2504adf"
    end
  end

  on_linux do
    url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.4/nora-cli-0.1.4-linux-x86_64.tar.gz"
    sha256 "52bf41cdd63778f3dda875c2d294a3ee26edf3cecdff9b3bd21a0482a92ecb4a"
  end

  def install
    bin.install "nora"
  end

  test do
    assert_match "nora", shell_output("#{bin}/nora --version")
  end
end
