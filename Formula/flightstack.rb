class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.11/flightstack-1.2.11-macos-arm64.tar.gz"
      sha256 "301924cb4d7b0b89cf611ab940c94f60e680cfedaee3fc77cbcdea44efe197d2"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.11/flightstack-1.2.11-macos-x64.tar.gz"
      sha256 "4ec2277a51183e9a49205b6f769914dee6a4caffb7a6ec4c25079fe1936b39d0"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
