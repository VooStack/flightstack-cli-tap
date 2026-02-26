class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.17"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.17/flightstack-1.3.17-macos-arm64.tar.gz"
      sha256 "b7d02fd214edb096fe2a875410d66244ed4f47d69df6fca2398310259abdf21c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.17/flightstack-1.3.17-macos-x64.tar.gz"
      sha256 "d213fba054ed0bc15c07c33fc0b4f78ccf189d9eb5cf83ac6ac7a1f1e3911c3d"
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
