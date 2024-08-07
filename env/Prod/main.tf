module "prod" {
    source = "../../Infra"

    name = "prod"
    description = "app-de-prod"
    max = 5
    machine = "t2.micro"
    env = "prod-environment"
}