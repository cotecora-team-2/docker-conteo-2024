arch <- R.version$arch
if (arch == "aarch64") {
  cmdstanr::install_cmdstan(cores = 2,
                            release_url = "https://github.com/stan-dev/cmdstan/releases/download/v2.34.1/cmdstan-2.34.1-linux-arm64.tar.gz") # nolint
} else {
  cmdstanr::install_cmdstan(cores = 2,
                            release_url = "https://github.com/stan-dev/cmdstan/releases/download/v2.34.1/cmdstan-2.34.1.tar.gz") # nolint
}
