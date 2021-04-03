class Yage < Formula
  desc "age with YAML support"
  homepage "https://github.com/sylr/yage"
  url "https://github.com/sylr/yage.git",
      tag:      "v0.0.5",
      revision: "014939e23438206def21e231edb01ee31b30f18a"

  depends_on "make" => :build
  depends_on "git" => :build
  depends_on "go" => :build

  def install
    mkdir bin
    system "make", "dist/yage"
    bin.install "dist/yage"
  end
end
