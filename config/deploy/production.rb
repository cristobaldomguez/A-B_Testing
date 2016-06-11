set :stage, :production
set :rails_env, :production

server 'rpi3.local', user: 'pi', roles: %w{web app db}, primary: true