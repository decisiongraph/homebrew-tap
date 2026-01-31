class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-aarch64-apple-darwin.tar.gz"
      sha256 "3741b28913917bb57a93e69b0c57876e54533cd6c0331c56f36db2560c3dc615"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-x86_64-apple-darwin.tar.gz"
      sha256 "d240512601fc88325426fc35327d0c408e5554cdd0f354414164a5b5fd237120"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f75ab733b794f3244e30cf4240df7ab61017d086780305815db4e0b4c9e4b64a"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "237dd3dcd6b19c51469ab08d36aa029b29c4d100ddf61128bf258379a484d98c"
    end
  end

  def install
    bin.install "dg"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
