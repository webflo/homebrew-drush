class Drush8 < Formula
  desc "Command-line tool for Drupal. Drush 8 is for Drupal 7"
  homepage "https://github.com/drush-ops/drush"
  url "https://github.com/drush-ops/drush/releases/download/8.4.10/drush.phar"
  sha256 "c974a84c314bb230e262445fac8c6fd964d5747ce0c5946fb67dcf86de571789"
  license "GPL-2.0-or-later"

  depends_on "php" => :test
  uses_from_macos "php"

  def install
    bin.install "drush.phar" => "drush8"
  end

  test do
    system "#{bin}/drush8", "--version"
  end
end
