class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.18"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-apple-darwin.tar.gz"
      sha256 "02de7cc7855788bafdb44d2210ccf14349e9fcb7b0fcc2a45b2ce66fc85f0786"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-apple-darwin.tar.gz"
      sha256 "da3fccc1b96b1a9fb458d4488fd4ee6f1c3b9fa1a8d8906f69564abfd26ee7c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bd9e8f3b132bc6dcb72f391050a570c16b38e5a8f7c55597c5ac4b0a06e04922"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c3a7b5892a522360ae5ed111100465aed8f05c8c1a05ea61700488a16fcd074"
    end
  end

  def install
    bin.install "dg"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
