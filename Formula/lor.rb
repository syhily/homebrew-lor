class Lor < Formula
  homepage "http://lor.sumory.com"
  desc "A fast, minimalist web framework for lua based on OpenResty"

  stable do
    url "https://github.com/sumory/lor.git", :tag => "v0.1.0"
  end

  head do
    url "https://github.com/sumory/lor.git", :branch => "master"
  end

  option "HEAD", "Install the head version"

  depends_on "openssl"
  depends_on "ossp-uuid"

  def install
    # Add path for lord
    inreplace "bin/lord" do |file|
      file.gsub! ".. package.path", ".. '#{prefix}/?.lua;#{prefix}/?/init.lua;'"
    end

    prefix.install Dir["./*"]
  end
end
