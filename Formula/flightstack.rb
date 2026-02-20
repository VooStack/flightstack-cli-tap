class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.12"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.12/flightstack-1.3.12-macos-arm64.tar.gz"
      sha256 "720b128213d725ecdf29fa8e25e7c1cd5ce1c9b9a084995b10ae4ffec0f7c64c"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.12/flightstack-1.3.12-macos-x64.tar.gz"
      sha256 "d452d460a18374d9c8ca1143befe318dec88ddf7c9f8a96043c97645a5793033"
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
