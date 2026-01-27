class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.64"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.64/flightstack-1.2.64-macos-arm64.tar.gz"
      sha256 "8d7172adfddd951a95d4036a4ab643d92770f3f1a98cf90bd2914adb0439a5d3"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.64/flightstack-1.2.64-macos-x64.tar.gz"
      sha256 "8d7172adfddd951a95d4036a4ab643d92770f3f1a98cf90bd2914adb0439a5d3"
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
