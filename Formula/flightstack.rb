class Flightstack < Formula
  desc "CLI for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.16"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.16/flightstack-1.2.16-macos-arm64.tar.gz"
      sha256 "d7bf30460374c22fb2ff381e063412179957b25ca78d5f65f192196336562728"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.16/flightstack-1.2.16-macos-x64.tar.gz"
      sha256 "20753442d6a8f9a18c675a0e3fd422cec460ba38b3e0557bf660ae61ea07c998"
    end
  end

  def install
    bin.install "flightstack"
  end

  test do
    assert_match "FlightStack CLI", shell_output("#{bin}/flightstack --version")
  end
end
