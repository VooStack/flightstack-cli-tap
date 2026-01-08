class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.55"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.55/flightstack-1.2.55-macos-arm64.tar.gz"
      sha256 "c632a499872ace16a43ac7a23e3b758055a6288f73770264c9b9a5d3b0cbe905"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.55/flightstack-1.2.55-macos-x64.tar.gz"
      sha256 "7b788d7f0f8bcf76018c097f3451fd0ae1ad15bf6c85d25019e80b8fb25e06a4"
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
