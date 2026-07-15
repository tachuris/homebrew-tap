class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.18"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.18/fresnel-darwin-arm64"
      sha256 "6411df1e94ffe5a0754b28ea585ef046783e8cf623e84489bddfa42da282c49b"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.18/fresnel-darwin-x64"
      sha256 "8fcb25300fa505a413fa17bd93487af432b52b8c0a5c241c18415d6884be51ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.18/fresnel-linux-arm64"
      sha256 "a955087bfee81ecfbba9857d89b61d4c71301c75871824e444f1ba3d098b8441"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.18/fresnel-linux-x64"
      sha256 "bff7a0b32bf02f8e903b309816d4aa60fc2754b02cb3d3f7f3cd76fe2f7624d6"
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
