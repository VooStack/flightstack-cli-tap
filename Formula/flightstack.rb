class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.14/flightstack-1.2.14-macos-arm64.tar.gz"
      sha256 "ca0014fb675ef0b7eee35752e70fcaf28fc9338f893535f58ae94e945ec2cec8"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.14/flightstack-1.2.14-macos-x64.tar.gz"
      sha256 "45c715c499a35e55e97a2233198763794d275dd657f7a066edb3f7c4d5c52a01"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
