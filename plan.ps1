$pkg_name = "sqlserver"
$pkg_origin = "mwrock"
$pkg_version = "0.1.0"
$pkg_maintainer = "The Habitat Maintainers <humans@habitat.sh>"

$pkg_svc_run = ".`"$env:ProgramFiles/Microsoft SQL Server/MSSQL14.$pkg_name/MSSQL/binn/sqlservr.exe`" -c -s$pkg_name"
$pkg_exports = @{
  "port"="port"
}
$pkg_description = "Microsoft SQL Server 2017"
$pkg_upstream_url = "https://www.microsoft.com/en-us/sql-server/sql-server-2017"
$pkg_bin_dirs = @("bin")

$setupDir = "d:"

function invoke-download { }
function invoke-verify { }

function Invoke-Build { }

function Invoke-Install {
  Copy-Item "$setupDir/*" $pkg_prefix/bin -Recurse
}
