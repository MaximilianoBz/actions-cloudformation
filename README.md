# CloudFormation Deploy Action with AWS CLI

This action deploys AWS CloudFormation Stacks through yml files.

## Usage

```yml
name: "Deploy CloudFormation Stack to AWS"
on: 
  push:
    branches:
    - master

jobs:
  deploy:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v1
    - uses: maximilianobz/actions-cloudformation@v1.0.0
      env:
        TEMPLATE: 'template.yml'
        TEMPLATEOUTPUT: 'template-output.yml'
        AWS_STACK_NAME: 'my-stack'
        AWS_REGION: 'us-east-1'
        AWS_ACCESS_KEY_ID: ${{secrets.AWS_ACCESS_KEY_ID}}
        AWS_SECRET_ACCESS_KEY: ${{secrets.AWS_SECRET_ACCESS_KEY}}
        AWS_DEPLOY_BUCKET: ${{secrets.AWS_DEPLOY_BUCKET}}
```

### Environment Variables

* `TEMPLATE` - [Optional]. YML file containing CloudFormation Stack.
  * Type: `string`
  * Default: `template.yml`
* `TEMPLATEOUTPUT` - [Optional]. YML file containing SAM template.
  * Type: `string`
* `CAPABILITIES` - [Optional]. AWS Stack Capabilites.
  * Type: `string`
  * Default: `CAPABILITY_IAM`
* `AWS_STACK_NAME` - [**Required**]. The Stack name that is going to be published.
  * Type: `string`
* `AWS_REGION` - [**Required**]. AWS Region where to deploy the CloudFormation Stack.
  * Type: `string`
* `AWS_ACCESS_KEY_ID` - [**Required**]. AWS Access Key Id.
  * Type: `string`
* `AWS_SECRET_ACCESS_KEY` - [**Required**]. AWS Secret Access Key.
  * Type: `string`
* `AWS_DEPLOY_BUCKET` - [**Required**]. AWS S3 Bucket where the Stack package is going to be stored.
  * Type: `string`
* `USE_JSON` - [Optional]. Whether to use JSON instead of YML as the output template format.
  * Type: `boolean`

### License
The Dockerfile and associated scripts and documentation in this project are released under the [MIT License](LICENSE).
