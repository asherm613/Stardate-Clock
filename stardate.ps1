while ($true) {
    $now = Get-Date
    $year = $now.Year
    $doy = $now.DayOfYear
    $seconds = ($now.Hour * 3600) + ($now.Minute * 60) + $now.Second
    $dayFraction = $seconds / 86400

    $base = ($year - 1961) * 1000
    $sd = $base + 1000 * (($doy + $dayFraction) / 365)

    Clear-Host
    "{0:F4}" -f $sd

    Start-Sleep -Milliseconds 500
}