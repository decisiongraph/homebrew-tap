class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.7"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-apple-darwin.tar.gz"
      sha256 "9601f61187b7276bd2121dae0400a5027edb2fbc2a0de7fd993a417d9ade5789"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-apple-darwin.tar.gz"
      sha256 "e588004816ccbff9c57384d51e240638c7dd88f7a84160722745043a624a9831"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6cfb7825fdc5e9b6dac66711dcc3e96bb7328095f3f9364d778885cc95a1ddb2"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "508996cf257ce0afc981673e79edc25bc8fdb12cf24e158884363c5671212721"
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
