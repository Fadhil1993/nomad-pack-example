job [[ .postgresql.job_name ]] 
{
  datacenters = [[.postgresql.datacenters ]]
  type = [[ .postgresql.type ]]
  group [[ .postgresql.job_name ]] 
  {
    count = 1
    task [[ .postgresql.job_name ]] 
    {
      driver = [[ .postgresql.driver ]]
      config 
      {
        image = [[ .postgresql.config_image ]]
        network_mode = [[ .postgresql.config_network_mode ]]
        port_map 
        {
          db = [[ .postgresql.config_network_mode ]]
        }
      }
      env 
      {
          POSTGRES_USER= [[ .postgresql.env_POSTGRES_USER ]],
          POSTGRES_PASSWORD= [[ .postgresql.env_POSTGRES_PASSWORD ]]
      }

      logs {
        max_files     = [[ .postgresql.logs_max_files ]]
        max_file_size = [[ .postgresql.logs_max_file_size ]]
      }

      resources {
        cpu = [[ .postgresql.resouce_cpu ]]
        memory = [[ .postgresql.resouce_memory ]]
        network {
          mbits = [[ .postgresql.resouce_network_mbits ]]
          port  "db"  {
            static = [[ .postgresql.resouce_network_port_db ]]
          }
        }
      }
      service {
        name = [[ .postgresql.job_name ]]
        tags = [[ .postgresql.service_tags ]]
        port = [[ .postgresql.service_port ]]

        check {
          name     = [[ .postgresql.service_check_name ]]
          type     = [[ .postgresql.service_check_type ]]
          interval = [[ .postgresql.service_check_interval ]]
          timeout  = [[ .postgresql.service_check_timeout ]]
        }
      }
    }
    restart {
      attempts = [[ .postgresql.restart_attempts ]]
      interval = [[ .postgresql.restart_interval ]]
      delay = [[ .postgresql.restart_delay ]]
      mode = [[ .postgresql.restart_mode ]]
    }

  }

  update {
    max_parallel = [[ .postgresql.update_max_parallel ]]
    min_healthy_time = [[ .postgresql.min_healthy_time ]]
    healthy_deadline = [[ .postgresql.healthy_deadline ]]
    auto_revert = [[ .postgresql.auto_revert ]]
    canary = [[ .postgresql.canary ]]
  }
}