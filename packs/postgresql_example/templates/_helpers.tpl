// allow nomad-pack to set the job name

[[- define "job_name" -]]
[[- if eq .postgres_example.job_name "" -]]
[[- .nomad_pack.pack.name | quote -]]
[[- else -]]
[[- .postgres_example.job_name | quote -]]
[[- end -]]
[[- end -]]

// only deploys to a region if specified

[[- define "region" -]]
[[- if not (eq .postgres_example.region "") -]]
region = [[ .postgres_example.region | quote]]
[[- end -]]
[[- end -]]
