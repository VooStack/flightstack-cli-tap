class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.7"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.7/flightstack-1.2.7-macos-arm64.tar.gz"
      sha256 "f8d1973cbef0604bf73bc7b90a52993c5858d24cc7cfb23fd180640694160cd7"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.7/flightstack-1.2.7-macos-x64.tar.gz"
      sha256 "d98b2f45ee4ca1219ad1b123569c066d7f1b190ad9162610a8495be1380f3deb"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
