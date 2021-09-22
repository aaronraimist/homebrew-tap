class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.4.tar.gz"
  sha256 "b40e2fdc14e8300d0b95afd032654e588d2390c56d4a9abd46ebc9831033fdd8"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w"
    doc.install "README.md"
  end

  test do
    assert_equal "gomuks version v#{version}", shell_output("#{bin}/gomuks --version").strip
  end

  # gomuks stores things in ~/Library/Caches/gomuks and ~/Library/Application Support/gomuks
end
