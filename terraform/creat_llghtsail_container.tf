# テラフームとPVつなぐ
terraform {
  required_providers {
    awslightsail = {
      source = "deyoungtech/awslightsail"
    }
  }
}

# Configure the Provider
provider "awslightsail" {
  region = "ap-northeast-1	"
}

# コンテナ作成
# create a new Lightsail container service
resource "aws_lightsail_container_service" "my_container_service" {
  name        = "container-service-1"
  power       = "micro"
  scale       = 1
}