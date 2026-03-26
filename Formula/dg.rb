class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.4"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-apple-darwin.tar.gz"
      sha256 "f7de85a63b6839198d78b5d5c74c7ad207b513b5b1c01b79b168a1f8dcfe8105"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-apple-darwin.tar.gz"
      sha256 "e7819b115eb4497e0abb5a4b595f1cc12a33ae36702c3d14bc79974bd4127b09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2aa8aac36e9d8eb1fb993817cb4c1dc051e3ef15fd2faef25c8fc7f34f2e0d52"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "76a2c4f6fc0f7aab73ad8133a4fd02ee7c1ac6e09d7657aca3fb9a36c9fa4da5"
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
