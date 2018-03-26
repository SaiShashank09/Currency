require 'rubygems'
require 'selenium-cucumber'

# Store command line arguments
$browser_type = ENV['BROWSER'] || 'ff'
$platform = ENV['PLATFORM'] || 'desktop'
$os_version = ENV['OS_VERSION']

# check for valid parameters
validate_parameters $platform, $browser_type,

  desired_caps = {
    caps:       {
      platformName:  $platform,
      browserName: $browser_type,
      versionNumber: $os_version,
      },
    }

  begin
    $driver = Selenium::WebDriver.for(:"#{$browser_type}")
    $driver.manage().window().maximize()
  rescue Exception => e
    puts e.message
    Process.exit(0)
  end
end
