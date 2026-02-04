class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.0/flightstack-1.3.0-macos-arm64.tar.gz"
      sha256 "381a0dce7afb69e7a953b67d9d339bfd2328aec815e34c08d360a1c0a948837f"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.0/flightstack-1.3.0-macos-x64.tar.gz"
      sha256 "8d992fad6fef7d96a00bb6a861de465421ca858d1d5f1f3c6dfa1cb41b866733"
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
