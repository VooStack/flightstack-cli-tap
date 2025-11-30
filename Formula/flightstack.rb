class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/VooStack/FlightStack/releases/download/cli-v1.2.6/flightstack-1.2.6-macos-arm64.tar.gz"
      sha256 "98736db817e2c53f732f4068521555077eb6e02ac2228df917c353c38916a625"
    end
    on_intel do
      url "https://github.com/VooStack/FlightStack/releases/download/cli-v1.2.6/flightstack-1.2.6-macos-x64.tar.gz"
      sha256 "f39bd66ddbf56aaee0ab7a0e0bdcd81bc896010b78ba9d7d847f68d3b2e0e3e7"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
