class Guash < Formula
  desc "GUI app scripting by shell script."
  homepage "https://github.com/karino2/guash/"
  url "https://github.com/karino2/guash/releases/download/v1.0.2/guash-darwin-x64-1.0.2.zip"
  sha256 "d1822b91c47e2be0939c467fa6a5b54b74bfa44c67bd522df860e35ddfbc834f"
  license "MIT"

  depends_on "dotnet"

  def install
    bin.install "guash_doquery"
    bin.install "guash"
    bin.install	"guash_filter"
    bin.install	"guash_readtext"
  end
end
