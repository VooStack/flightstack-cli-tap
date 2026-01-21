class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.63"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.63/flightstack-1.2.63-macos-arm64.tar.gz"
      sha256 "dc5a65f0660e82191e0dd48c907bce35e5259ec57e726ceb5fe8b682f1a720b3"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.63/flightstack-1.2.63-macos-x64.tar.gz"
      sha256 "24da2f5c724a6b70253f98dd30eceaaf46cabca80d32e8cf7b1a7397970205b4"
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
