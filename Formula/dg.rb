class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.2"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.2/dg-aarch64-apple-darwin.tar.gz"
      sha256 "4290041bfe88f8fcaf397da173637036f5eff86e902d882081693bab8522676a"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.2/dg-x86_64-apple-darwin.tar.gz"
      sha256 "93fbb79eece00e72c7e2ab11e426d186f701f9e3e943495bc5253c65ba509a66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.2/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f455e7c54cbd3d1b00a5dc2b36e4c557c5153613ba634bb139c469d3c2ccfd4b"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.2/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e12c25dad4be805630dce2c85b6178b3ca31f41daa81c4a08eb4760e4b19ff09"
    end
  end

  def install
    bin.install "dg"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
