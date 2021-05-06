# aws --region eu-central-1 ec2 describe-instances   --query 'Reservations[*].Instances[*].PublicIpAddress'  --output text >> inventory

aws --region eu-central-1 ec2 describe-instances \
\
        --query 'Reservations[*].Instances[*].PublicIpAddress' \
      --filters "Name=tag:Project,Values=udacity" \
      --output text >> inventory
