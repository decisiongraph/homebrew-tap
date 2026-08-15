class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.12"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-apple-darwin.tar.gz"
      sha256 "344b61451217a05778690b687ed4ecc6c00ad9e20ac782e80c65703d5cbcf2b2"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-apple-darwin.tar.gz"
      sha256 "6a3ac2fc57bf86f53d26c20a8581c3126f67375fc5848cda4ec4660b6784b769"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7ebee1a041d1aaee6623d5e243d1c9ddd5ef0579feb7330925361050d710d54f"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9be0f657a1afa383850a82f170d0cd4b9e010b274fb04b06ae857da7fae3ee30"
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
