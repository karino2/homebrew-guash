class Mdvcat < Formula
  desc "Markdown viewer from command line using photino"
  url "https://github.com/karino2/mdvcat/releases/download/v1.0.2/mdvcat-darwin-x64-1.0.2.zip"
  sha256 "01a83f35abde38bb6063d9ae260b761839defa7094c575db730a7f6ae12c9209"
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
