class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.13"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.13/flightstack-1.2.13-macos-arm64.tar.gz"
      sha256 "5846dd3a2f2663d2f7aa162f9ee6766e3f5e81e511245fd6fee2618dd467ac13"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.13/flightstack-1.2.13-macos-x64.tar.gz"
      sha256 "c6b152d7414e14d43954ef40f5fb215da778be489473b1c5c79fde20bca0e1bc"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
