class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.38"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.38/flightstack-1.2.38-macos-arm64.tar.gz"
      sha256 "85ae30a71261e6b812cda461c5257aa0166d212890da752a603c870d08cbd437"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.38/flightstack-1.2.38-macos-x64.tar.gz"
      sha256 "6f4d047a11a593de68790723be2d5888048532b624b30694b71d1e2e4554a16d"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
