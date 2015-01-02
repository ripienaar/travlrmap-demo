Bundler.require(:default)

set :run, false

APPROOT = File.dirname(__FILE__)
config = YAML.load_file(File.join(APPROOT, "config", "travlrmap.yaml"))

run Travlrmap::SinatraApp.new(config)
