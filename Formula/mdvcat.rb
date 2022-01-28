class Mdvcat < Formula
  desc "Markdown viewer from command line using photino"
  homepage "https://github.com/karino2/mdvcat"
  url "https://github.com/karino2/mdvcat/releases/download/v1.0.1/mdvcat.1.0.1.zip"
  sha256 "8283c5bb395e5f1a960a846bc6013daf46f3a744819a897d3a977e0eedd7fc01"
  license "MIT"

  depends_on "dotnet"

  def install
    bin.install "mdvcat"
  end

end
