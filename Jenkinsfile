pipeline{
	agent any
	stages{
		stage("Check Status of Instance"){
			steps{
			
			// Updates Values in inventory details like instance IP, Username, Userpasscode 
			//Checks status of instance whether it is reachable or not 
			
				sh '''chmod 777 changeHost.sh
		  		sh changeHost.sh $vmip $vmuser $vmpwd'''
				sh 'ansible web -i inventory -m win_ping'
			}
		}
		stage("Updating Windows Server 2012 R2"){
			steps{
			
			ansiblePlaybook installation: 'ansible-home', inventory: 'inventory', playbook: 'main.yml'
			}
		}
	}
}
