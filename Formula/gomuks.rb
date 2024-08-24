class Gomuks < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "e5212c416a84a5e8f46ab6b36cf9cfec36918930dbf7a155cce00570887600f7"
  head "https://github.com/tulir/gomuks.git", branch: "master"

  livecheck do
    url :stable
  end

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
