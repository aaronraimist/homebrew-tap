class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.3.tar.gz"
  sha256 "a21dc27175abe1f6ec220dda71cec69f6abc982f60237e35100a366934fd9185"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w"
    doc.install "README.md"
  end

  test do
    assert_equal "gomuks version v#{version}", shell_output("#{bin}/gomuks --version").strip
  end
end
