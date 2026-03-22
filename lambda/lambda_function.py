import json
import boto3

ec2 = boto3.client('ec2')

def lambda_handler(event, context):
    print("Received event:", json.dumps(event))

    try:
        instance_id = event['detail']['resource']['instanceDetails']['instanceId']

        # Tag instance as compromised
        ec2.create_tags(
            Resources=[instance_id],
            Tags=[{'Key': 'Security', 'Value': 'Quarantined'}]
        )

        print(f"Tagged instance {instance_id} as Quarantined")

    except Exception as e:
        print("Error:", str(e))

    return {"status": "done"}


import boto3

ec2 = boto3.client('ec2')

def lambda_handler(event, context):
    print("Event received:", event)

    try:
        sg_id = event['detail']['resourceId']
    except KeyError:
        print("No security group ID found")
        return

    try:
        response = ec2.describe_security_groups(GroupIds=[sg_id])
        sg = response['SecurityGroups'][0]

        for permission in sg['IpPermissions']:
            if permission.get('FromPort') == 22:
                for ip_range in permission.get('IpRanges', []):
                    if ip_range.get('CidrIp') == '0.0.0.0/0':
                        print(f"Removing open SSH from {sg_id}")

                        ec2.revoke_security_group_ingress(
                            GroupId=sg_id,
                            IpPermissions=[permission]
                        )

        print("Remediation complete")

    except Exception as e:
        print("Error:", str(e))

