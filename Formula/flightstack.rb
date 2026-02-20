class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.7/flightstack-1.3.7-macos-arm64.tar.gz"
      sha256 "c0392e675f5c9abd4b011a4d6bab4573d862c3d00dbaa7b680fcf41d7b9d6ede"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.7/flightstack-1.3.7-macos-x64.tar.gz"
      sha256 "590ed5a24be77e492b7a0f9c974ee7055ebf5192062defa430a839db6a867dd5"
    end
  end

  def install
    bin.install "flightstack"
    bin.install "flightstack-agent"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
