class FootprintDr < Formula
  desc "Footprint Disaster Recovery CLI"
  homepage "https://docs.onefootprint.com/"

  version = "0.3.0"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/onefootprint/footprint-dr-releases/releases/download/#{version}/footprint-dr-#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "f4ecce2fe7b0c3a6582beefcd823d98025277a5a63d7f29218a3426063878798"

      def install
        bin.install "footprint-dr"
      end
    end
  end
end
