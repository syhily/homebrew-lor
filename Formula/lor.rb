class Lor < Formula
  homepage "http://lor.sumory.com"
  desc "A fast, minimalist web framework for lua based on OpenResty"

  stable do
    url "https://github.com/sumory/lor.git", :tag => "v0.3.0"
  end

  head do
    url "https://github.com/sumory/lor.git", :branch => "master"
  end

  depends_on "openssl"
  depends_on "ossp-uuid"

  def install
    # # Add path for lord
    # inreplace "bin/lord" do |file|
    #   file.gsub! ".. package.path", ".. '#{prefix}/?.lua;#{prefix}/?/init.lua;'"
    #   file.gsub! "/usr/local/lor", "#{prefix}"
    # end

    # prefix.install Dir["./*"]
    system "sh", "install.sh", "#{prefix}"
  end
end
