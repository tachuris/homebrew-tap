class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.11"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.11/fresnel-darwin-arm64"
      sha256 "641ab9fb8f1d4ba83024941102b72112e0daea99b3a47475d2823b280562f166"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.11/fresnel-darwin-x64"
      sha256 "f8e4c89926a933d8b910b55ea9d108d0e7334aa44035125e9e2beca09dcd6038"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.11/fresnel-linux-arm64"
      sha256 "a57a39470d3311594ed0eb702d8d7a1e7b51ada4d40083d06638931b9ddc5d5f"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.11/fresnel-linux-x64"
      sha256 "052b0edd3fef25e422eca12a4174ef2b316627ac0d6897ad80da88334146831c"
    end
  end

  def install
    bin.install Dir["fresnel-*"].first => "fresnel"
    bin.install_symlink bin/"fresnel" => "fr"
  end

  test do
    assert_match "fresnel v#{version}", shell_output("#{bin}/fresnel --version")
    assert_match "fresnel v#{version}", shell_output("#{bin}/fr --version")
  end
end
