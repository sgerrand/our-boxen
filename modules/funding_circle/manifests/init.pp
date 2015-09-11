# Installs all the Funding Circle repos from github.com
#
# The default list can be easily overridden in hiera/users/username.yaml
# with something like:
#       funding_circle::repos:
#           - alpaca
#           - funding_circle_app
#
class funding_circle ($repos = [],) {
  validate_array($repos)

  if !(empty($repos)) {
    repo::funding_circle { $repos: }
  }
}
