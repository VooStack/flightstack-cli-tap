class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.4"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.4/flightstack-1.3.4-macos-arm64.tar.gz"
      sha256 "f8c3c239364cfc47b97a5c1f1e6971493add58faa96dac5aac5fc7b23bcb2657"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.4/flightstack-1.3.4-macos-x64.tar.gz"
      sha256 "f5e5383c9fac10d1e4bc66c5d3454fa87c3be7dfe6fb2760afdf30db917baca8"
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
