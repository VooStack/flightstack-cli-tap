class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.10"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.10/flightstack-1.2.10-macos-arm64.tar.gz"
      sha256 "4cba0acc2087e6a4233727bf25fbf03b5e87c5d74f8dc00c482e1de7690dbdba"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.10/flightstack-1.2.10-macos-x64.tar.gz"
      sha256 "0f249fed4435c8bfd9de8c6fc8ef20004cb102950a27d740833b62a173de2c95"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
