class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.8"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.8/fresnel-darwin-arm64"
      sha256 "438ea344d4e4e9c6e92eb25315acb1049339b085dfe4253385ebbece5bb12121"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.8/fresnel-darwin-x64"
      sha256 "aa459cb5c66226752020672a65c5ed4fb195e1fc9b2b7b67a4d71e44ce512a61"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.8/fresnel-linux-arm64"
      sha256 "1965622930fc35620d91b5856d50b9167629a195b2d43b86f5df09272a922e95"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.8/fresnel-linux-x64"
      sha256 "ecc3004ea47c892d33e2a6612b6704ed7112c0f112d4360839b163a81b7f6dc3"
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
