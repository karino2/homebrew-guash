class Guash < Formula
  desc "GUI app scripting by shell script."
  homepage "https://github.com/karino2/guash/"
  url "https://github.com/karino2/guash/releases/download/v1.0.3/guash-darwin-x64-1.0.3.zip"
  sha256 "f8fcc3cd5e5045b6eea3493d7231a0266161685e607b33a47abfcf2a7ca72436"
  license "MIT"

  depends_on "dotnet"

  def install
    bin.install "guash_doquery"
    bin.install "guash"
    bin.install	"guash_filter"
    bin.install	"guash_readtext"
  end
  
  def caveats
    <<~EOS
      If you see the error saying
      "A fatal error occurred. The required library libhostfxr.dylib could not be found."
      You need to set DOTNET_ROOT like 
        export DOTNET_ROOT="$(brew --prefix)/opt/dotnet/libexec"
    EOS
  end
end
