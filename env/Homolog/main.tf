module "prod" {
    source = "../../Infra"

    name = "homol"
    description = "app-de-homol"
    max = 3
    machine = "t2.micro"
    env = "homol-environment"
}