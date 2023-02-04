class DrushLauncher < Formula
  desc "Small wrapper around Drush for your global $PATH"
  homepage "https://github.com/drush-ops/drush-launcher"
  url "https://github.com/drush-ops/drush-launcher/releases/download/0.10.2/drush.phar"
  sha256 "0ae18cd3f8745fdd58ab852481b89428b57be6523edf4d841ebef198c40271be"
  license "GPL-2.0-or-later"

  depends_on "php" => :test
  uses_from_macos "php"

  def install
    bin.install "drush.phar" => "drush"
  end

  test do
    system "#{bin}/drush", "--drush-launcher-version"
  end
end
