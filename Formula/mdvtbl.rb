# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Mdvtbl < Formula
  desc "GUI markdown editor read from stdin and write to stdout."
  homepage ""
  url "https://github.com/karino2/mdvtbl/releases/download/v1.0.0/mdvtbl-darwin-x64.1.0.0.zip"
  sha256 "3e27b099ea44c3eec05454e7fcc21741a3c9e9b01a6165631c510cc402e8ed24"
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
