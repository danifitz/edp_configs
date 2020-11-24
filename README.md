# edp_configs

## Usage

### Assign values to the following environment variables:

- `WHERESCAPE_SQL_SERVER_URL` - Wherescape SQL server URL i.e. `wherescape.database.windows.net`
- `WHERESCAPE_SQL_SERVER_USER` - Wherescape SQL server user
- `WHERESCAPE_SQL_SERVER_PWD` - Wherescape SQL server password
- `SIMPLEMENT_SQL_SERVER_URL` - Simplement SQL server URL i.e. `simplement.database.windows.net`
- `SIMPLEMENT_SQL_SERVER_USER` - Simplement SQL server user
- `SIMPLEMENT_SQL_SERVER_PWD` - Simplement SQL server password

### Prerequisites

1. Download MS ODBC driver for Windows https://aka.ms/downloadmsodbcsql
2. Download Visual C++ 2017 Redistributable https://aka.ms/vs/15/release/vc_redist.x64.exe
3. Download MS Command Line Utilities for SQL Server https://go.microsoft.com/fwlink/?linkid=2142258
4. Open Powershell as administrator and set to TLS 1.2 - `[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12`
5. Install Nuget Provider - `Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force`
6. Install SQL module - `Install-Module sqlserver`

### Installation

1. [Install New Relic Infrastructure agent](https://docs.newrelic.com/docs/infrastructure/install-infrastructure-agent/linux-installation/install-infrastructure-agent-windows)
2. Copy `/queries` to somewhere convenient on the VM
3. Replace the values for the commands in `flex-example.yml`
4. Copy `flex-example.yml` to `C:\Program Files\New Relic\newrelic-infra\integrations.d`
5. Restart the infrastructure agent Windows service
6. Verify there is data by running the following query in New Relic: `SELECT count(*) FROM wherescapeJobsWarningStateSample, wherescapeJobLongRunningSample, wherescapeJobErrorsSample`