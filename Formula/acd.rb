class Acd < Formula
  desc "Download and verify AWS CodeArtifact generic-package assets"
  homepage "https://github.com/nghianguyeniosdev/cad"
  version "0.1.2"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  url "https://github.com/nghianguyeniosdev/cad/releases/download/v0.1.2/acd-0.1.2-aarch64-apple-darwin.tar.gz"
  sha256 "b89271b84ad6c873f38155e9b377a4af2edcb7f98c5576f641deed3a6bcafd42"

  def install
    bin.install "acd"
  end

  test do
    assert_match "acd", shell_output("#{bin}/acd version")
  end
end
