class GomuksDev < Formula
  desc "Terminal based Matrix client written in Go"
  homepage "https://maunium.net/go/gomuks"
  url "https://github.com/tulir/gomuks/archive/e6a2c3ff85358c271e8b28888fc4b9c9f0585d07.tar.gz"
  version "0.3.1-e6a2c3f"
  sha256 "e215cf5d907f9af4cfd308de8b898d0eaf24cd4c65b93464411412f71b9b7b92"

  livecheck do
    skip "Unstable"
  end

  depends_on "go" => :build
  depends_on "libolm"

  def install
    system "go", "build", *std_go_args, "-ldflags", "-s -w -X main.Tag=#{version} -X 'main.BuildTime=#{Time.now}'"
    doc.install "README.md"
  end

  test do
    assert_match "gomuks #{version.major_minor_patch}", shell_output("#{bin}/gomuks-dev --version").strip
  end

  # gomuks stores things in ~/Library/Caches/gomuks and ~/Library/Application Support/gomuks
end
