job [[ .postgres_example.job_name ]] 
{
  datacenters = [[.postgres_example.datacenters ]]
  type = [[ .postgres_example.type ]]
  group [[ .postgres_example.job_name ]] 
  {
    count = 1
    task [[ .postgres_example.job_name ]] 
    {
      driver = [[ .postgres_example.driver ]]
      config 
      {
        image = [[ .postgres_example.config_image ]]
        network_mode = [[ .postgres_example.config_network_mode ]]
        port_map 
        {
          db = [[ .postgres_example.config_network_mode ]]
        }
      }
      env 
      {
          POSTGRES_USER= [[ .postgres_example.env_POSTGRES_USER ]],
          POSTGRES_PASSWORD= [[ .postgres_example.env_POSTGRES_PASSWORD ]]
      }

      logs {
        max_files     = [[ .postgres_example.logs_max_files ]]
        max_file_size = [[ .postgres_example.logs_max_file_size ]]
      }

      resources {
        cpu = [[ .postgres_example.resouce_cpu ]]
        memory = [[ .postgres_example.resouce_memory ]]
        network {
          mbits = [[ .postgres_example.resouce_network_mbits ]]
          port  "db"  {
            static = [[ .postgres_example.resouce_network_port_db ]]
          }
        }
      }
      service {
        name = [[ .postgres_example.job_name ]]
        tags = [[ .postgres_example.service_tags ]]
        port = [[ .postgres_example.service_port ]]

        check {
          name     = [[ .postgres_example.service_check_name ]]
          type     = [[ .postgres_example.service_check_type ]]
          interval = [[ .postgres_example.service_check_interval ]]
          timeout  = [[ .postgres_example.service_check_timeout ]]
        }
      }
    }
    restart {
      attempts = [[ .postgres_example.restart_attempts ]]
      interval = [[ .postgres_example.restart_interval ]]
      delay = [[ .postgres_example.restart_delay ]]
      mode = [[ .postgres_example.restart_mode ]]
    }

  }

  update {
    max_parallel = [[ .postgres_example.update_max_parallel ]]
    min_healthy_time = [[ .postgres_example.min_healthy_time ]]
    healthy_deadline = [[ .postgres_example.healthy_deadline ]]
    auto_revert = [[ .postgres_example.auto_revert ]]
    canary = [[ .postgres_example.canary ]]
  }
}