class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.2.1.tar.gz"
  sha256 "e1fd00a06a6145f72e134c9e1cddab53828716914a8ea61047f77aab16bc9679"

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
