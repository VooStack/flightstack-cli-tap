class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.65"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.65/flightstack-1.2.65-macos-arm64.tar.gz"
      sha256 "30b0dcdb2266e9e84d5358f84309681a766fe3249fbd7e285c4b656ebe74a2c2"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.65/flightstack-1.2.65-macos-x64.tar.gz"
      sha256 "d5d054e97f7dd6ac62e02da42560b883316b102ce340dd5356b00448c81a12a0"
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
