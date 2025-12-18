class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.31"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.31/flightstack-1.2.31-macos-arm64.tar.gz"
      sha256 "5b0652082552c669227cc5d7130a6fbb33db03780605c669e31dfa5bedf99e38"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.31/flightstack-1.2.31-macos-x64.tar.gz"
      sha256 "3394b390ebc33edd682acc30914d974316afa12ab3b1ae6d3bfef6cad184d860"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
