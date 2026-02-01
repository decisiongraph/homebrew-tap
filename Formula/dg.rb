class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.3/dg-aarch64-apple-darwin.tar.gz"
      sha256 "036d4c04b680775415a6fcfb29ecfb2728d4d4dea03a3f4d9e2a3448e86ed22f"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.3/dg-x86_64-apple-darwin.tar.gz"
      sha256 "02d5ef0fd50b8645540422dbfb4a0f0f63fd9d606ef7091c3b774cc850e1d0ef"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.3/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3d24511b02c553bf3ac37a2f3bbcb3b2258fb338eaf0b7d9f42b36ee2b3d4c3a"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.3/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b7d7327fc189f5740846e80f5c733d65dd10692966ee09ac5bc96782b733fe28"
    end
  end

  def install
    bin.install "dg"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
