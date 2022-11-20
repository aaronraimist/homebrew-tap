class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/v0.3.0.tar.gz"
  sha256 "0710a63cc3ec9a4f525510497ba64aa94170498eb536411d089871f336d99ab4"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w -X main.Tag=#{version} -X 'main.BuildTime=#{Time.now}'"
    doc.install "README.md"
  end

  test do
    assert_match "gomuks #{version}", shell_output("#{bin}/gomuks --version").strip
  end

  # gomuks stores things in ~/Library/Caches/gomuks and ~/Library/Application Support/gomuks
end
