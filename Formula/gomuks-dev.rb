class GomuksDev < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/e569c1519a1041c13b3b7fc76daef58bc4454e4d.tar.gz"
  version "0.2.4-e569c15"
  sha256 "8daf3f9afdcf5a924a2e3693c3ac9ae880f288194399eb73a6f8c3585c241576"

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w -X main.Tag=#{version} -X 'main.BuildTime=#{Time.now}'"
    doc.install "README.md"
  end

  test do
    assert_equal "gomuks #{version.to_s[0, 5]}", shell_output("#{bin}/gomuks-dev --version").strip
  end

  # gomuks stores things in ~/Library/Caches/gomuks and ~/Library/Application Support/gomuks
end
