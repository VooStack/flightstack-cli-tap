class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.14/flightstack-1.3.14-macos-arm64.tar.gz"
      sha256 "f2f958290b021332c7c795ff5d809fb0ef919a3aac7a2183d8d8931429e57ef8"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.14/flightstack-1.3.14-macos-x64.tar.gz"
      sha256 "d6b4eb93a72bc28fcbaadbda0a2bcc8e81772502e486a2c4cdcfea1c5bb71734"
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
