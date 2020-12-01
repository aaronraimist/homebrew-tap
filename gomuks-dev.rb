class GomuksDev < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/25bc7dfff3258defea5535af55068a6ea7c36a46.tar.gz"
  sha256 "ed58d5e91bb432618be5fe3d1d212b192284f9f6a7af1da76a29157919e4a917"
  version "0.2.1-25bc7df"

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
