[
  {
    "image": "${account_id}.dkr.ecr.${aws_region}.amazonaws.com/${fastladder}",
    "name": "${fastladder}-migration",
    "memory": ${fastladder_rails_memory},
    "essential": true,
    "command": ["bundle", "exec", "rake", "db:migrate"],
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "${aws_region}",
        "awslogs-group": "${fastladder}-migration"
      }
    },
    "links": [
      "${fastladder}-mysql"
    ],
   "environment": [
      {
        "name": "SECRET_KEY_BASE",
        "value": "${fastladder_secret_key_base}"
      },
      {
        "name": "RAILS_LOG_TO_STDOUT",
        "value": "true"
      },
      {
        "name": "RAILS_SERVE_STATIC_FILES",
        "value": "true"
      },
      {
        "name": "DATABASE_URL",
        "value": "mysql2://root:${fastladder_mysql_root_password}@${fastladder}-mysql/${fastladder_mysql_database}?encoding=utf8mb4"
      }
    ]
  },
  {
    "image": "jvanoers/docker-mysql-utf8mb4",
    "name": "${fastladder}-mysql",
    "memory" : ${fastladder_mysql_memory},
    "essential": true,
    "logConfiguration": {
      "logDriver": "awslogs",
      "options": {
        "awslogs-region": "${aws_region}",
        "awslogs-group": "${fastladder}-mysql"
      }
    },
    "mountPoints": [
      {
        "sourceVolume": "${fastladder}-mysql",
        "containerPath": "/var/lib/mysql"
      }
    ],
    "environment": [
      {
        "name": "MYSQL_DATABASE",
        "value": "${fastladder_mysql_database}"
      },
      {
        "name": "MYSQL_ROOT_PASSWORD",
        "value": "${fastladder_mysql_root_password}"
      }
    ]
  }
]
