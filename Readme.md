# Packer code to build golden AMI on AWS

This repo consists of packer code written in HCL to build a golden AMI. I've utilized AWS session manager as an authentication mechanism. 

Using AWS Session Manager instead of the traditional SSH method in HashiCorp Packer to build a golden AMI provides several advantages, particularly in terms of security, compliance, and ease of use. Below are some detailed explanations:

- Session Manager eliminates the need to generate, distribute, or rotate SSH keys, which reduces the risk of key compromise.
- Session Manager connects to instances without needing port 22 (SSH) open, reducing the attack surface.
- Access to instances is controlled via IAM policies, providing fine-grained permissions without relying on additional key-based authentication.


