class GomuksDev < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/ce4e9bf92abfbf7ba5d6da970f85513dd25d2812.tar.gz"
  sha256 "60bc5e2d6c202be504d75de667a4e727941ead33ee05e0d2174762b1c70f94ce"
  version "0.2.2-ce4e9bf"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w"
    doc.install "README.md"
  end

  test do
#     assert_equal "gomuks version v#{version}", shell_output("#{bin}/gomuks-dev --version").strip
    assert false
  end
end
