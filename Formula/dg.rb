class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.6"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-apple-darwin.tar.gz"
      sha256 "7f872fdf1bf2d3456e6c1be70adce08c357254139b992920476434cb7cc8f693"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-apple-darwin.tar.gz"
      sha256 "2225d5d32530ee0179a84eacc0a9a56ba0f157e220e44b1fb5931ab33adcd453"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d80f2eac05995f93a0956298b323a16ebc6e8d58920144b9f3ca25d8de4444b"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "113c8aef318c6400c5627ebaf7d4f106d5d5be0433a020f93cbc955d7d1bea16"
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
