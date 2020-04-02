class VaporBeta < Formula
  desc "Vapor Toolbox (Server-side Swift web framework)"
  homepage "https://vapor.codes"
  head "https://github.com/vapor/toolbox.git"

  depends_on :xcode => "11"
  depends_on "openssl"

  stable do
    version "18.0.0-beta.28"
    url "https://github.com/vapor/toolbox/archive/#{version}.tar.gz"
    sha256 "51fab90b1c2218a6a629752f7c5ee48a0051ca3ce7c27af1f97c01cf8c470bd4"
  end

  def install
    system "swift", "build", "--disable-sandbox"
    system "mv", ".build/debug/vapor", "vapor-beta"
    bin.install "vapor-beta"
  end

  test do
    system "vapor-beta -h"
  end
end
