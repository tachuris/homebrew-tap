class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.14"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.14/fresnel-darwin-arm64"
      sha256 "dbc2eadf12b25c6bee65d89a618a646b66869e1b71ef37625b841f1a03ac02cb"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.14/fresnel-darwin-x64"
      sha256 "30e02fab048997ac0e32db99bb9198408c4e9848045862efc9fa9588978daf45"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.14/fresnel-linux-arm64"
      sha256 "53f383a30bee43a1ee2e3f7ab3d2358ea2a0600956070d0b923b73affed17537"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.14/fresnel-linux-x64"
      sha256 "1913481bb82b652b62c26c0fecd2b906ae1e2197fa2b3b62d4827f19058b03a2"
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
