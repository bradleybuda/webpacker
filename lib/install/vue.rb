require "webpacker/configuration"

puts "Copying vue loader to config/webpack/loaders"
copy_file "#{__dir__}/config/loaders/installers/vue.js", "config/webpack/loaders/vue.js"

puts "Copying the example entry file to #{Webpacker.config.source_entry_path}"
copy_file "#{__dir__}/examples/vue/hello_vue.js", "#{Webpacker.config.source_entry_path}/hello_vue.js"

puts "Copying vue app file to #{Webpacker.config.source_entry_path}"
copy_file "#{__dir__}/examples/vue/app.vue", "#{Webpacker.config.source_entry_path}/app.vue"

puts "Installing all vue dependencies"
run "yarn add vue vue-loader vue-template-compiler"

puts "Webpacker now supports vue.js 🎉"
