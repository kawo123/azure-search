# Azure Search

Azure Search demo highlighting key featyres:  synonyms, search relevancy, auto-complete, auto-suggestion, and knowledge store.

## Pre-requisite

- [Azure Storage Explorer](https://azure.microsoft.com/en-us/features/storage-explorer/)
- [Postman](https://www.getpostman.com/downloads/)
- [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)

## Getting Started

- Clone the repository

- In `./terraform`:
  - Change `prefix` in `variables.tf` because Azure Search name has to be globally unique
    - For the remainder of the documentation, the prefix `azure-km` **WILL BE ASSUMED**
  - Run `terraform init` to initialize Terraform
  - Run `terraform plan -out=out.tfplan`
  - Run `terraform apply out.tfplan`
  - Note the outputs of `terraform apply`

## Gotchas

- Azure Search Explorer (Portal) doesn't support Lucene syntax
- Azure Search simple syntax doesn't support fuzzy and proximity search
- Free Azure Search tier only allows indexing 20 documents
  - Need to attach cognitive service to solve the blocker
- Azure Search `Full` query mode doesn't support negation i.e. `NOT url:*reviews*`
  - Query `sentimentScore:<0.5` doesn't work as well. Complains about `Invalid search against numeric field`
- Azure Search Text Merge skill cannot override input field

---

### PLEASE NOTE FOR THE ENTIRETY OF THIS REPOSITORY AND ALL ASSETS

1. No warranties or guarantees are made or implied.
2. All assets here are provided by me "as is". Use at your own risk. Validate before use.
3. I am not representing my employer with these assets, and my employer assumes no liability whatsoever, and will not provide support, for any use of these assets.
4. Use of the assets in this repo in your Azure environment may or will incur Azure usage and charges. You are completely responsible for monitoring and managing your Azure usage.

---

Unless otherwise noted, all assets here are authored by me. Feel free to examine, learn from, comment, and re-use (subject to the above) as needed and without intellectual property restrictions.

If anything here helps you, attribution and/or a quick note is much appreciated.
