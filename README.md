AppFog resque example
----------------------------

lifted and adapted from the [resque demo app](https://github.com/resque/resque/tree/v1.24.1/examples/demo)

the relatad [cloudfoundry blog post](http://blog.cloudfoundry.com/2012/05/03/running-resque-workers-on-cloud-foundry/) on running resque on cloudfoundry is a little out of sync.

changes:
 * inject bundler asap (inserted into Rakefile)
 * added env.rb file to interop between local and running-on-appfog 


when configuring this project to run in af, the command to start running should read something like

    bundle exec rake --trace QUEUE=default resque:work


see the included [worker-manifest.yml](worker-manifest.yml) for more details


