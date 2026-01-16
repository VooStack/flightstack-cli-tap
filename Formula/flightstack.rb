class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.56"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.56/flightstack-1.2.56-macos-arm64.tar.gz"
      sha256 "5f75f89879fd7333678c68adca768892cd24ef5bdceaac5946b4aaf43cadb0c8"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.56/flightstack-1.2.56-macos-x64.tar.gz"
      sha256 "7c25f870d68a3c4580ce50a684c93a5ffc704efdc366f12f535e3664316415dd"
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
