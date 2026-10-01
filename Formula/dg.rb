class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.19"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-apple-darwin.tar.gz"
      sha256 "72973c65b8ae127f3631ae9ed2099647ced9964b8d771ecde9e5a51bf4e6cad3"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-apple-darwin.tar.gz"
      sha256 "49e99ca7d5b006b40705a2314215c6bdbc37089270af3e3961ac83bc172bc088"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "227bcb481bd2d4af1520394937a6974f9335eeb9ea52f6c0f45f4e384543a259"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c98f87d3ef869651ec3c9b8d7d0fc978ac3775ea5e8df60d4188dc2e4a5bf4b2"
    end
  end

  def install
    bin.install "dg"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
