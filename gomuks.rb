class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.1.tar.gz"
  sha256 "513da6d936af5f570b5f8b491f361cab23b05d9a84e94d337766d44076a5744f"

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
