class Fresnel < Formula
  desc "Personal productivity app for tracking recurring practices and tasks"
  homepage "https://github.com/tachuris/fresnel"
  version "0.0.3"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.3/fresnel-darwin-arm64"
      sha256 "8850e59402a1b048a2458988db5c12ffeb061ef8bddcf487a64cf24a06313960"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.3/fresnel-darwin-x64"
      sha256 "c297f86c6c715649e1ad5efa104866ad61b6815b372be1a36b85ed193e9c8b38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.3/fresnel-linux-arm64"
      sha256 "975b9061eba99aa4c276bc50139f263ffbe5febb30ebf8fc28d6c036c9c489cd"
    end
    on_intel do
      url "https://github.com/tachuris/homebrew-tap/releases/download/fresnel-v0.0.3/fresnel-linux-x64"
      sha256 "2d8830701d89bf191e184162ada74ca7c12608bc57f5b800988a26ebd5cbc0b9"
    end
  end

  def install
    bin.install Dir["fresnel-*"].first => "fresnel"
  end

  test do
    assert_match "fresnel v#{version}", shell_output("#{bin}/fresnel --version")
  end
end
