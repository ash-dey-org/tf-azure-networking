
vnets = [
  {
    name          = "d-vn-primary",
    address_space = ["10.100.0.0/16"]
    extra_tags = {
      ENV = "DEV"
    }
  },

  {
    name          = "t-vn-primary",
    address_space = ["10.101.0.0/16"]
    extra_tags = {
      ENV = "TEST"
    }
  },

  {
    name          = "u-vn-primary",
    address_space = ["10.102.0.0/16"]
    extra_tags = {
      ENV = "UAT"
    }
  },

  {
    name          = "p-vn-primary",
    address_space = ["10.103.0.0/16"]
    extra_tags = {
      ENV = "PROD"
    }
  },

  {
    name          = "h-vn-primary",
    address_space = ["172.16.0.0/16"]
    extra_tags = {
      ENV = "HUB"
    }
  },

]