class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.32"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.32/flightstack-1.2.32-macos-arm64.tar.gz"
      sha256 "178dc5285ae7369bd39a8b09e2fe490b18380a9ab009552d9442e465f13521bd"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.32/flightstack-1.2.32-macos-x64.tar.gz"
      sha256 "2b5e7553827ed51b6d81dbd7929d56621deaf2d7dccb6af04d308f600f72af7f"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
