# Identity Access Management (IAM)

Identity Access Management (IAM) offers the following features
- Centralized control of your AWS account
    - A facade of access control to all services & resources
- Shared access of your AWS account
    - With the organization's root account, all employees would obtain their sub-accounts.
- Granular permission control
    - Security group (SG)?
- Identity Federation
    - LDAP, active directory, Facebook, etc.
- Multi-factor authentication (MFA)
    - Can be enforced at the organization level (i.e., root account)
- Password rotation policy
    - Can be enforced at the organization level (i.e., root account)

All these powerful features are around 4 terminologies, namely
- **Users:** end users;
- **Groups:** a collection of end users;
- **Policies:** policy documents in JSON format
    - There are a lot of pre-defined policies published by AWS;
    - All policy documents have a similar format to the code snippet below.
- **Roles:** assigned to various AWS resources.

```json
{
    "Version": "2013-07-15",
    "Statement": {
        "Effect": "Allow",
        "Action": "*",
        "Resource": "*"
    }
}
```

## Summary

- IAM is **universal**.
- The root account has complete admin access.
- New users have no permissions by default when created.
- New users, however, are assigned _access key ID_ and _secret access key_ when created.
