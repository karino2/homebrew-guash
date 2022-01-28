class Guash < Formula
  desc "GUI app scripting by shell script."
  homepage "https://github.com/karino2/guash/"
  url "https://github.com/karino2/guash/releases/download/v1.0.1/guash.1.0.1.zip"
  sha256 "dc53478df55bb8728420bebd40cf5fc57bbf48c171f53d7865d4954e83734e3f"
  license "MIT"

  depends_on "dotnet"

  def install
    bin.install "guash_doquery"
    bin.install "guash"
    bin.install	"guash_filter"
    bin.install	"guash_readtext"
  end
end
