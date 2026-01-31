class Dg < Formula
  desc "Decision Graph - Text-based knowledge graph for company decisions"
  homepage "https://github.com/decisiongraph/dg"
  version "0.1.1"
  license "AGPL-3.0"

  on_macos do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-aarch64-apple-darwin.tar.gz"
      sha256 "10ffba7e41486cce1a8452eeadf02b8a1b9d7ef90dfb64277826a7dfb1e8011b"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-x86_64-apple-darwin.tar.gz"
      sha256 "2c98c2ade9c28a9852cdbd768af549dd11dba2b82804e589f99c2759ac23ebdd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4ae0f4d67250865c83dd0664b24cbdddbd88f66a59d5e643aac30e4c5186cf86"
    end
    on_intel do
      url "https://github.com/decisiongraph/dg/releases/download/v0.1.1/dg-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e557e256ef54bdaaa9d5ea138b19059d525b083a1991194857dddc10039529f6"
    end
  end

  def install
    bin.install "dg"
  end

  test do
    assert_match "Decision Graph", shell_output("#{bin}/dg --help")
  end
end
