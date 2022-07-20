#!groovy
topolology_url = "or-large"
def runTest(application) {
	
		echo "application: $application"
		echo pwd
		sh "pwd"
		dir("test-${application}") {	
			sh "cd /home/developer/sdx-gm/robot_example/ && make test-${application}"
		}
}

testParams = [:]

pipeline {
  agent any
  parameters {
    booleanParam(name: 'leaf_spine_onboarding',
                 defaultValue: true,
		 description: 'Run the leaf_spine_onboarding test suite')	 
    choice(name: 'OR_PODS', choices: ['testbed1', 'testbed2', 'testbed3', 'testbed4'], description: 'This will work only stage1 is clicked')
    text(name: 'malar',
                 defaultValue: 'defaut value',
		 description: 'Checking text parameter',
	         trim: true)	 
    separator(name: "Description", sectionHeader: "Description for Scale Test Automation (6020, 6320, 6312)", 
	description:"6020SCALE Only used if 6320SCALE is not soaking in parallel and vice versa , Since both testbeds are using 396 shareable ONU's; 6312SCALE can run in parallel with any of these two testbeds;This Jenkin Job will run {(6020SCALE,6320SCALE-one by one),6312)} parallelly.")
	separator(name: "TEST_ENVIRONMENT", sectionHeader: "6020SCALE Only used if 6320SCALE is not soaking in parallel and vice versa , Since both testbeds are using 396 shareable ONU's; 6312SCALE can run in parallel with any of these two testbeds;This Jenkin Job will run {(6020SCALE,6320SCALE-one by one),6312)} parallelly.",
		separatorStyle: "border-width: 0",
		sectionHeaderStyle: """
			background-color: #63A4FF;
			text-align: center;
			padding: 4px;
			color: #343434;
			font-size: 16px;
			font-weight: normal;
			text-transform: uppercase;
			font-family: 'Orienta', sans-serif;
			letter-spacing: 1px;
			font-style: italic;
		"""
	)
	  
	  
  }


stages {		
        stage('Test Leaf Spine Onboarding') {
          when {
            expression { params.leaf_spine_onboarding == true }
          }
          steps {
            script {
              var = params.OR_PODS
              echo "VAR  $var"
	      
	      runTest('leaf-spine-onboarding')
            }
          }
        }     
      }
}
