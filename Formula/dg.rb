class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.8"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-apple-darwin.tar.gz"
      sha256 "8509c8febb382cceb2285dee85589ec5b911eb69c49cc5d88655e3f1650ac984"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-apple-darwin.tar.gz"
      sha256 "31f2692238cb78c945df14e895439159608d0369db385b4c2146ad155bf2e35e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f825d744cd6c64b90c33b3eff797cda9573a96222a8c56137abdf632878fffe0"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v#{version}/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0be1df0fde3467fc8a8db9609bd5ad3135b75e0d9c4fe83fb69158da715e74c8"
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
