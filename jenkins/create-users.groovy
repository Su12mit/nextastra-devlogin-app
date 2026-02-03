jenkins = Jenkins.instance

def hudsonRealm = new HudsonPrivateSecurityRealm(false)
hudsonRealm.createAccount("admin", "Admin@123")
hudsonRealm.createAccount("devuser", "Dev@123")
jenkins.setSecurityRealm(hudsonRealm)
jenkins.save()
