class Nora < Formula
  desc "Local Nora developer CLI"
  homepage "https://github.com/noralabsinc/nora"
  version "0.1.3"
  license :cannot_represent

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.3/nora-cli-0.1.3-macos-arm64.tar.gz"
      sha256 "425470d238f331867d814dd99def6ce441085dfc245a0474018aae22f08421c4"
    else
      url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.3/nora-cli-0.1.3-macos-x86_64.tar.gz"
      sha256 "d094d627b8955bac0a01dc55725c7772f7b96aa43a04bd1b4bd3132aea2e75bf"
    end
  end

  on_linux do
    url "https://github.com/noralabsinc/homebrew-nora/releases/download/v0.1.3/nora-cli-0.1.3-linux-x86_64.tar.gz"
    sha256 "1e8e33f3901ef912bbf0f5aef02290a621aaae227e88631defe3af25a8d5d35e"
  end

  def install
    bin.install "nora"
  end

  test do
    assert_match "nora", shell_output("#{bin}/nora --version")
  end
end
