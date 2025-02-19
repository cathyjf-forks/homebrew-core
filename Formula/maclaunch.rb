class Maclaunch < Formula
  desc "Manage your macOS startup items"
  homepage "https://github.com/hazcod/maclaunch"
  url "https://github.com/hazcod/maclaunch/archive/2.3.1.tar.gz"
  sha256 "abba1f7cffd7f694b23745f6ccc137b17b6c9ea38fe2fbb55a8bd9646f6ae1a1"
  license "MIT"

  bottle do
    sha256 cellar: :any_skip_relocation, all: "46c223f29cab091c07512a07eabe567730dc3a555f04b20dbf3b85d887aa8087"
  end
  depends_on :macos

  def install
    bin.install "maclaunch.sh" => "maclaunch"
  end

  test do
    system bin/"maclaunch", "list"
  end
end
