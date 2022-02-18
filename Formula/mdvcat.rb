class Mdvcat < Formula
  desc "Markdown viewer from command line using photino"
  url "https://github.com/karino2/mdvcat/releases/download/v1.0.3/mdvcat-darwin-x64-1.0.3.zip"
  sha256 "dfd373207a5fae2d1beb9e2d53c3c277c6755d58caba2ea18a444f0ee8eb19f9"
  license "MIT"

  depends_on "dotnet"

  def install
    bin.install "mdvcat"
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
