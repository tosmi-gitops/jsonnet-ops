{
    _config:: {
	htpasswd_users: 'root:$2y$05$7qI8cLdDpZ0LtX.5rBCyHOLCsa4aR/yFY0daTzEh9ShaFKj9uunnC
user1:$2y$05$QqW5.iTYjz.6uV3Gwzl50eQLmpqNZ5fYsBvdOJtzQAJFofDZ31vAi
user2:$2y$05$3E9vRpVGpIVLWzbt6wdBW.Gk91czwoCaLPeySZcYQIJUO2MlaO0.G
developer1:$2y$05$RXfguvpf1UtGkCO5YnEpc.5V.xIGF49.R4xIsz98qX3ETJCswdEA.
developer2:$2y$05$OzACzl1OXYSRjR1WMrNvBe1uGsARuN9DAHMwYH9Cw383Rhf/yS4gu'

    },
    oauth: {
	cluster : {
	    kind: 'OAuth',
	    apiVersion: 'config.openshift.io/v1',
	    metadata: {
		name: 'cluster'
	    },
	    spec: {
		identityProviders: [],
		users: $._config.htpasswd_users
	    }
	}
    }
}
