class Yage < Formula
  desc "age with YAML support"
  homepage "https://github.com/sylr/yage"
  url "https://github.com/sylr/yage.git",
      tag:      "v0.0.2",
      revision: "1bb6abde3f9056dc364299bf050358374640ed83"

  depends_on "make" => :build
  depends_on "git" => :build
  depends_on "go" => :build

  def install
    mkdir bin
    system "make", "dist/yage"
    bin.install "dist/yage"
  end
end
