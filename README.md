This repo is to test the jenkins CD Pipelines. Consider the following steps:
* Create a local react project and add a 'Jenkinsfile' to it (you can find the sample content of Jenkinsfile in this first few commits of this repo)
* Install Jenkins (locally or through docker)
* Navigate to the its homepage and add a new item, select 'Pipeline' from the list
* Switch to the Pipeline tab, and for the 'Definition' field, select 'Pipeline Script from SCM', add a github repo url and its credentials
* Save these changes and click on the 'Build Now' option

How do i trigger a build?
Tried to trigger a build with each PR creation through a Git hook but i don't have a public IP for jenkins (listening on localhost for now) so this experiement kind of failed. Anyway, here are the steps:
* Navigate to Jenkins HomePage and click on Manage Jenkins > Manage Plugins > Available (2nd Tab) > Search for 'GitHub Pull Request Builder' and install it
* Now Navigate to Manage Jenkins > Configure Systen > Scroll down to 'GitHub Pull Request Builder' section and add your Github Credentials.
* After installing this module, if you go to your Pipeline's configuration, you'll see a new option under the 'Build Trigger' section 'GitHub Pull Request Builder'
* Click on that, check the option 'Use github hooks for build triggering'
* Jenkins is now set up to recieve events from Github via hooks. The Github side of it is yet to be set up. Navigate to your repo on Github and click on 'Settings' > 'WebHook' (right pane) > Add Webhook
* Add the payload URL as: http://<Jenkins-IP>:<port>/ghprbhook/ and select 'Let me select individual events.' > 'Pull Requests'
* Save the webhook and try it out.