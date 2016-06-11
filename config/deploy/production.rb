set :stage, :production
set :rails_env, :production

server 'rpi3.local', user: 'deploy', roles: %w{web app db}, primary: true