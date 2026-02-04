class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.5"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.5/flightstack-1.3.5-macos-arm64.tar.gz"
      sha256 "fd788431919c13e8df0170225527a0fcd4e1ecb4f16df5301fd2fed23b4d94dc"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.5/flightstack-1.3.5-macos-x64.tar.gz"
      sha256 "2a633bae63ba4b2efd2f8d44622b69f8769c1cb8b04c84569c3722569e2fed57"
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
