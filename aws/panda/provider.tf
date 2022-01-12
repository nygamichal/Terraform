provider "aws" {
    region = "us-east-1"
    #Local --profile for provider.
    profile = "panda" #Name must exists inside ~/.aws/credentials

    # Instead of profile, keys could be typed here - Bad practice..:)
    # access_key_id=..
    # secret_access_key=.. 
}