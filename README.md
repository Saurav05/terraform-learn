# Terraform-learn

This guide provides step-by-step instructions for installing Terraform on your system. 
Terraform is an open-source infrastructure as code (IaC) tool developed by HashiCorp. With Terraform, you can define and provision infrastructure resources in a declarative configuration language.

# Prerequisites 
Before you begin, ensure that your system is up to date and that you have the following packages installed:

1. gnupg
2. software-properties-common
3. curl
   
You will need these packages to verify HashiCorp's GPG signature and add HashiCorp's Debian package repository to your system.


```
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
```
# Install the HashiCorp GPG Key
Next, you'll need to install the HashiCorp GPG key, which is used to verify the authenticity of HashiCorp packages.

```
wget -O- https://apt.releases.hashicorp.com/gpg | \
gpg --dearmor | \
sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
Verify the Key Fingerprint
To ensure the key's validity, verify its fingerprint using the following command:
```
```
gpg --no-default-keyring \
--keyring /usr/share/keyrings/hashicorp-archive-keyring.gpg \
--fingerprint
```
The gpg command will display the key fingerprint along with other information. Make sure it matches the fingerprint provided in the official HashiCorp documentation.

 # Add the HashiCorp Repository
Add the official HashiCorp repository to your system by running the following command. This command uses lsb_release -cs to determine your distribution's codename automatically.

```
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
sudo tee /etc/apt/sources.list.d/hashicorp.list
```
 # Download Package Information
After adding the repository, update the package information to ensure that you can install Terraform from the newly added repository.

```
sudo apt update
```
# Install Terraform
Finally, install Terraform using the following command:

```
sudo apt-get install terraform
```
# Terraform is now installed on your system. You can verify the installation by running:

```
terraform --version
```
You are now ready to start using Terraform to define and manage your infrastructure as code. For more information on how to use Terraform, refer to the Terraform documentation.
https://developer.hashicorp.com/terraform/docs

If you encounter any issues during the installation process, please refer to the official Terraform documentation or HashiCorp's support resources for assistance.
