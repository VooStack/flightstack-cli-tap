class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.57"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.57/flightstack-1.2.57-macos-arm64.tar.gz"
      sha256 "866bcbc4d23c9341e5ea9f6a0a0d1c81e91e64741502cdee667b922987d9a046"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.57/flightstack-1.2.57-macos-x64.tar.gz"
      sha256 "1d2227b064780ec207f211cfd9770de2b199fd97c2e3482b541aa9825aded1c8"
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
