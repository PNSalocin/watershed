namespace :action_cable do
  namespace :install do
    desc 'Copy (with override) channel files from loaded engines'
    task :channels do |t, args|
      ::Rails::Engine.subclasses.map do |engine|
        # Construction et validation du path des canaux à importer
        engine_name = engine.to_s.deconstantize.demodulize
        channels_path = File.join engine.root, 'app', 'channels', engine_name.downcase
        next unless File.directory? channels_path

        # Copie des fichiers
        puts "Channel files found for engine #{engine_name}, copying (with override)."
        FileUtils.cp_r channels_path, File.join(Rails.root, 'app', 'channels'), verbose: true
      end
    end
  end
end
