class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.62"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.62/flightstack-1.2.62-macos-arm64.tar.gz"
      sha256 "821ede192e2d6f7d8c8634763525dc2096368a44dcc4aa84ca68784a5a87fa87"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.62/flightstack-1.2.62-macos-x64.tar.gz"
      sha256 "2c23b7320e3fac2dc2a00aab9fc6004b1c61a76729c25cacbf4d5970d535c8cc"
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
