class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.13"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-apple-darwin.tar.gz"
      sha256 "9aeaf9d6a822577fe8d8202b3af5b7682057505f39f09c8aa79d0fa47de8a8a6"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-apple-darwin.tar.gz"
      sha256 "7326fbf0a233e760e28fe9387a2f4f3d99e1185436ea803c11b66cc3974a2ca2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c47a5a094dee4f2c3836d236c36acdb7bcc351ef580d9be26287d0e950c73214"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4a7fa69683871c3e1a06617ca377902948e842adbf919d39c34e3038e764679a"
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
