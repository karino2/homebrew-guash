class Guash < Formula
  desc "GUI app scripting by shell script."
  homepage "https://github.com/karino2/guash/"
  url "https://github.com/karino2/guash/releases/download/v1.0.0/guash-darwin-x64-1.0.0.zip"
  sha256 "e3d4ea2998f65a210a288caf2614ec51b1d692c40ffbf2833cf07500dc4e895a"
  license "MIT"

  depends_on "dotnet"

  def install
    bin.install "guash_doquery"
    bin.install "guash"
    bin.install	"guash_filter"
    bin.install	"guash_readtext"
  end
end
