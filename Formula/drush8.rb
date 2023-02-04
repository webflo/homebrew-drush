class Drush8 < Formula
  desc "Command-line tool for Drupal. Drush 8 is for Drupal 7"
  homepage "https://github.com/drush-ops/drush"
  url "https://github.com/drush-ops/drush/releases/download/8.4.11/drush.phar"
  sha256 "e030f5e8f407199cc01b09a6fd635e67f7432a7950b2571bdf9024a6226ce6d4"
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
