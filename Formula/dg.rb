class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.3"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-apple-darwin.tar.gz"
      sha256 "392d78c274f44df201f8abd2a9b8e09abbaf71ce85c538b18dbf3dcbb8b6c32c"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-apple-darwin.tar.gz"
      sha256 "f989b6dab8c373451d8b1aae46afc2090f9a73f90854578617e1fe8882ed5c7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8760263b1c1d6905819241b1ae197a792f096a2b7981b9588f97130d1d56e283"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e578ae6db75f1d3ae31cc0a610e13277dc1044519245defccf57fdd307c387bb"
    end
  end

  def install
    bin.install "dg"
    bin.install "dg-mcp"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
