class Flightstack < Formula
  desc "CLI and Agent for FlightStack - Self-hosted CI/CD for Flutter"
  homepage "https://flightstack.dev"
  version "1.2.59"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.59/flightstack-1.2.59-macos-arm64.tar.gz"
      sha256 "3e7128002c9b90e126378113c48da3f4a331d33344a930be739fdcd1220ddc2a"
    end
    on_intel do
      url "https://github.com/voostack/flightstack-releases/releases/download/cli-v1.2.59/flightstack-1.2.59-macos-x64.tar.gz"
      sha256 "da7ed8370619a8f308be72741aeb1ba9aa2011bf6390e7faf2b64fbe0eb24d1c"
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
