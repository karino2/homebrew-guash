class Mdvcat < Formula
  desc "Markdown viewer from command line using photino"
  url "https://github.com/karino2/mdvcat/releases/download/v1.0.4/mdvcat-darwin-x64-1.0.4.zip"
  sha256 "7b5d693490438196f17d36d14704c3b3f0e3027ee1dfe516f010914fa2b74798"
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
