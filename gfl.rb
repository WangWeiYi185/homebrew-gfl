# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class Gfl < Formula
  desc ""
  homepage ""
  url "https://github.com/WangWeiYi185/ag_flutter_cli/releases/download/0.0.2/v0.0.2.tar.bz2"
  sha256 ""
  license ""

  # depends_on "cmake" => :build

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    #system "./configure", *std_configure_args, "--disable-silent-rules" ,"--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    #system "tar -zxvf v0.0.1.tar.bz2"
    #system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    #system "make", "install"
    bin.install "gfl"
    (libexec).install "urlimport"

    # 编译 Cpython exec 流程
    #ENV.prepend_create_path "PYTHONPATH", libexec/"urlimport"
    #system "python", *Language::Python.setup_install_args(libexec/"urlimport")
    bin.env_script_all_files(libexec/"urlimport", :PYTHONPATH => ENV["PYTHONPATH"])

    #ENV["PYTHONPATH"] = `#{prefix}/libexec/urlimport`
    
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test gfl`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
