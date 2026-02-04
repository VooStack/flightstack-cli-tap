class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.3/flightstack-1.3.3-macos-arm64.tar.gz"
      sha256 "d19d81a1ea3554ace1e49ac781d94497a7e73161c57c4b47ee55ed99e882dbb5"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.3/flightstack-1.3.3-macos-x64.tar.gz"
      sha256 "3959d46baec60e0f12b270fdd8806b850f7e37524e15faf599c61c9a0085bee4"
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
