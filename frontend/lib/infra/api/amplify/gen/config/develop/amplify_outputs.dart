const amplifyConfig = r'''{
  "auth": {
    "user_pool_id": "ap-northeast-1_Na5aiN5iu",
    "aws_region": "ap-northeast-1",
    "user_pool_client_id": "35dl6jo0vgkh7pkmaqu8kh0bt5",
    "identity_pool_id": "ap-northeast-1:8c6b3cd8-bd50-4fe6-8465-dd7a50860005",
    "mfa_methods": [],
    "standard_required_attributes": [
      "email"
    ],
    "username_attributes": [
      "email"
    ],
    "user_verification_types": [
      "email"
    ],
    "groups": [],
    "mfa_configuration": "NONE",
    "password_policy": {
      "min_length": 8,
      "require_lowercase": true,
      "require_numbers": true,
      "require_symbols": true,
      "require_uppercase": true
    },
    "unauthenticated_identities_enabled": true
  },
  "data": {
    "url": "https://irdkmnblbnbjbjos6p3mqxk5ja.appsync-api.ap-northeast-1.amazonaws.com/graphql",
    "aws_region": "ap-northeast-1",
    "default_authorization_type": "AMAZON_COGNITO_USER_POOLS",
    "authorization_types": [
      "AWS_IAM"
    ],
    "model_introspection": {
      "version": 1,
      "models": {
        "Task": {
          "name": "Task",
          "fields": {
            "id": {
              "name": "id",
              "isArray": false,
              "type": "ID",
              "isRequired": true,
              "attributes": []
            },
            "owner": {
              "name": "owner",
              "isArray": false,
              "type": "String",
              "isRequired": false,
              "attributes": []
            },
            "title": {
              "name": "title",
              "isArray": false,
              "type": "String",
              "isRequired": true,
              "attributes": []
            },
            "description": {
              "name": "description",
              "isArray": false,
              "type": "String",
              "isRequired": false,
              "attributes": []
            },
            "order": {
              "name": "order",
              "isArray": false,
              "type": "Int",
              "isRequired": false,
              "attributes": []
            },
            "datetime": {
              "name": "datetime",
              "isArray": false,
              "type": "AWSDateTime",
              "isRequired": true,
              "attributes": []
            },
            "done": {
              "name": "done",
              "isArray": false,
              "type": "Boolean",
              "isRequired": true,
              "attributes": []
            },
            "createdAt": {
              "name": "createdAt",
              "isArray": false,
              "type": "AWSDateTime",
              "isRequired": false,
              "attributes": [],
              "isReadOnly": true
            },
            "updatedAt": {
              "name": "updatedAt",
              "isArray": false,
              "type": "AWSDateTime",
              "isRequired": false,
              "attributes": [],
              "isReadOnly": true
            }
          },
          "syncable": true,
          "pluralName": "Tasks",
          "attributes": [
            {
              "type": "model",
              "properties": {}
            },
            {
              "type": "key",
              "properties": {
                "name": "byOwnerDatetime",
                "queryField": "tasksByOwnerDatetime",
                "fields": [
                  "owner",
                  "datetime"
                ]
              }
            },
            {
              "type": "auth",
              "properties": {
                "rules": [
                  {
                    "provider": "userPools",
                    "ownerField": "owner",
                    "allow": "owner",
                    "identityClaim": "cognito:username",
                    "operations": [
                      "create",
                      "update",
                      "delete",
                      "read"
                    ]
                  }
                ]
              }
            }
          ],
          "primaryKeyInfo": {
            "isCustomPrimaryKey": false,
            "primaryKeyFieldName": "id",
            "sortKeyFieldNames": []
          }
        }
      },
      "enums": {},
      "nonModels": {}
    }
  },
  "version": "1.4"
}''';