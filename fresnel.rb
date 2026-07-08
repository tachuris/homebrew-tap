class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.6/fresnel-darwin-arm64"
      sha256 "97dde512ec3faf4178a81847f9fa7432edea30d461548a23fcc8dd1f1dd708b9"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.6/fresnel-darwin-x64"
      sha256 "cb5d0f821d9cc5ce44a4805f523af4a96a73cd755419f21c3acc41c7fb869467"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.6/fresnel-linux-arm64"
      sha256 "1d83821c31fe949b816c4798823d36c177775f8f7bcc2901b344057c54914d8c"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.6/fresnel-linux-x64"
      sha256 "60ed50b780c423fdb93e665d29d2e95e87e8d67e9af0647c78bd1babcb9f2d3c"
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
