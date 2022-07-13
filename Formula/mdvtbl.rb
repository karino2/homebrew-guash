# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mdvtbl < Formula
  desc "GUI markdown editor read from stdin and write to stdout."
  homepage ""
  url "https://github.com/karino2/mdvtbl/releases/download/v1.0.3/mdvtbl-darwin-x64.1.0.3.zip"
  sha256 "bf56c26f4b5f0d5d9479c8cb24f2a4e658b8b6b64e3b2201c9f3e81bb2ad1118"
  license "Apache-2.0"

  depends_on "dotnet"

  def install
    bin.install "mdvtbl"
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
