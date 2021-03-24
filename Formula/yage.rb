class Yage < Formula
  desc "age with YAML support"
  homepage "https://github.com/sylr/yage"
  url "https://github.com/sylr/yage.git",
      tag:      "v0.0.4",
      revision: "4e957d58e13fb2557cdffa69b567849fa0bfe9c2"

  depends_on "make" => :build
  depends_on "git" => :build
  depends_on "go" => :build

  def install
    mkdir bin
    system "make", "dist/yage"
    bin.install "dist/yage"
  end
end
