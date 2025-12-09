class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.8/flightstack-1.2.8-macos-arm64.tar.gz"
      sha256 "fbd028ef5b32b61361121ab77eb2a00f43c0a8288f6ad33fa5d72b81d4f401d9"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.8/flightstack-1.2.8-macos-x64.tar.gz"
      sha256 "c5c3df2ae25d047df450cd16106a7f11d81595749a8687fa0fe121fe3c307ebc"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
