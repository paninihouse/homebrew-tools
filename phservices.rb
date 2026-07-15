class Phservices < Formula
	desc "Friendly launchctl wrapper for your personal services"
	version "1.0.0"
	license "MIT"
	homepage "https://github.com/paninihouse/services"

	url "https://github.com/paninihouse/services/archive/refs/tags/#{version}.tar.gz"
	sha256 "8f77bfcc390368685cfd60066345e2fbbaf5057cbeb01b1be5efdf13c1b822f0"
	head "https://github.com/paninihouse/services.git", branch: "master"

	depends_on xcode: ["26.0", :build]
	depends_on :macos

	uses_from_macos "swift" => :build

	def install
		# Executable
		system "swift", "build", "--disable-sandbox", "-c", "release"
		bin.install ".build/release/phservices"

		# Manual
		system "swift", "package", "--disable-sandbox", "generate-manual", "--multi-page"
		manpages = Dir[".build/plugins/GenerateManual/outputs/phservices/*.1"]
		odie "generate-manual produced no .1 files" if manpages.empty?
		man1.install manpages

		# Shell completions
		generate_completions_from_executable(bin/"phservices", "--generate-completion-script")
	end

	test do
		assert_match version.to_s, shell_output("#{bin}/phservices --version")
		assert_match "phservices <subcommand>", shell_output("#{bin}/phservices --help")
	end
end
