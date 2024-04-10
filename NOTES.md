# INSTALL

1. `./bin/bash/deploy-tre.sh -r eu-central-1`
   - if EC2 instance fails during creation, look into `/var/log/cloud-init.log` and `/var/log/cloud-init-output.log`
2. Create Portfolio
3. Create Product with type `External`
4. Import Launch role (`cfn-templates/TerraformProvisioningAccount.yaml`)
5. Create Contraint on product with launch role
6. Allow Access to product in portfolio

## Launch product

```
Error
Error occurred during parameter parsing: Access denied while downloading artifact from s3://sc-dac22e7168f1f331e15ab3446961e117-eu-central-1/out/4827614aa83bffcebccc93a4797c1bc7/7ab46fbacca5b4e55d17a0006909cb20-7f4a56c4c38de4f76f1dd62168ba690493a6a141152f547d88832d1ab2d7f6d2-2d3d9814ce98f841fba3e2dc56d6ae2b39404917114fcae68c7213c7cd8d9609-1712758734801-5216297a-c4aa-426f-a1af-44c470172f52: AccessDenied: User: arn:aws:sts::518981542439:assumed-role/ServiceCatalogExternalParameterParserRole-eu-central-1/ServiceCatalogExternalParameterParser is not authorized to perform: sts:AssumeRole on resource: arn:aws:iam::518981542439:role/SCLaunchRoleTerraformExample status code: 403, request id: f559bb95-5417-4a37-a164-5b7fbb47816f
```

# UPDATE

```shell
./bin/bash/deploy-tre.sh -r eu-central-1
```

