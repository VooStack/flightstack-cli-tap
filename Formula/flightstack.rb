class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.19"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.19/flightstack-1.3.19-macos-arm64.tar.gz"
      sha256 "090a2ba1d36ae4fa9a0b677b1d37d45877aac934beb9dd39399a9603258b89cf"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.19/flightstack-1.3.19-macos-x64.tar.gz"
      sha256 "254480d53c1f85baafb79501e30756c9b4e18a880511702d07882653471afb92"
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
