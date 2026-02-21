class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.3.15"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-arm64.tar.gz"
      sha256 "69e203543e76dd122bc5065cd80d8a4f8b2d15826d8c0cc52d949b467d80fa34"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.3.15/flightstack-1.3.15-macos-x64.tar.gz"
      sha256 "e0fc68af1a73f433ed079d88a454fe1cdd1664d074e94e345a9ed16ccbc70146"
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
