class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.0"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-apple-darwin.tar.gz"
      sha256 "fc0179d3013d6f64ba612f038e12637614d8c89d82ced83cff4e148b57df0115"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-apple-darwin.tar.gz"
      sha256 "ff0713769c6a122e7d0075974cf40ad5cda4c0dc51b0e9247648767d618e668e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "de1c4ee6ba17517b40dffca4cad9007ecba8961253a8c1a631ae07c9830325ee"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.0/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fa9d25bf6e6309fcac9cb1906fb7e921ca936fea7378fe61603add0563e30704"
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
