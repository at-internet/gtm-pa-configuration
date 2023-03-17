___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Piano Analytics - Configuration",
  "categories": [
    "ANALYTICS"
  ],
  "description": "Piano Analytics configuration variable. To be used with Piano Analytics tag template.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "collectDomain",
    "displayName": "Collect domain",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "REGEX",
        "args": [
          "http[s]?:\\/\\/([a-z0-9\\.\\-]+)$"
        ]
      },
      {
        "type": "NON_EMPTY"
      }
    ],
    "valueHint": "https://",
    "help": "Documentation \u003ca href\u003d\"https://developers.atinternet-solutions.com/piano-analytics/data-collection/general/collection-methods\"\u003eavailable here\u003c/a\u003e"
  },
  {
    "type": "TEXT",
    "name": "site",
    "displayName": "Site number",
    "simpleValueType": true,
    "alwaysInSummary": true,
    "valueValidators": [
      {
        "type": "POSITIVE_NUMBER"
      },
      {
        "type": "NON_EMPTY"
      }
    ]
  },
  {
    "type": "TEXT",
    "name": "sdkSrc",
    "displayName": "PA SDK source URL",
    "simpleValueType": true,
    "defaultValue": "https://tag.aticdn.net/piano-analytics.js",
    "help": "Enter PA SDK source file to use. You can use a self-hosted file, or \u003ca href\u003d\"https://developers.atinternet-solutions.com/piano-analytics/data-collection/sdks/javascript#cdn\" target\u003d\"_blank\"\u003eone available on PA CDN\u003c/a\u003e."
  },
  {
    "type": "SELECT",
    "name": "consentDefaultMode",
    "displayName": "Default consent mode",
    "macrosInSelect": true,
    "selectItems": [
      {
        "value": "opt-in",
        "displayValue": "opt-in"
      },
      {
        "value": "essential",
        "displayValue": "essential"
      },
      {
        "value": "opt-out",
        "displayValue": "opt-out"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "opt-in",
    "help": "If you updated from a previous version of the template, you need to empty the default privacy mode."
  },
  {
    "type": "RADIO",
    "name": "queueVarName",
    "displayName": "Queue variable name",
    "radioItems": [
      {
        "value": "_paq",
        "displayValue": "_paq"
      },
      {
        "value": "_paqueue",
        "displayValue": "_paqueue",
        "help": "Use this one if you have any conflict"
      }
    ],
    "simpleValueType": true,
    "defaultValue": "_paq"
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "consentItems",
    "displayName": "Consent items",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Type",
        "name": "consentItemType",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "properties",
            "displayValue": "Property"
          },
          {
            "value": "events",
            "displayValue": "Event"
          },
          {
            "value": "cookies",
            "displayValue": "Cookie"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Key",
        "name": "consentItemKey",
        "type": "TEXT",
        "isUnique": true,
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      },
      {
        "defaultValue": "",
        "displayName": "Priority",
        "name": "consentItemPriority",
        "type": "SELECT",
        "selectItems": [
          {
            "value": "optional",
            "displayValue": "Optional"
          },
          {
            "value": "essential",
            "displayValue": "Essential"
          },
          {
            "value": "mandatory",
            "displayValue": "Mandatory"
          }
        ],
        "valueValidators": [
          {
            "type": "NON_EMPTY"
          }
        ]
      }
    ]
  },
  {
    "type": "SIMPLE_TABLE",
    "name": "confTable",
    "displayName": "Other configurations",
    "simpleTableColumns": [
      {
        "defaultValue": "",
        "displayName": "Configuration key",
        "name": "confKey",
        "type": "TEXT",
        "valueHint": ""
      },
      {
        "defaultValue": "",
        "displayName": "Value",
        "name": "confValue",
        "type": "TEXT"
      }
    ],
    "help": "Documentation \u003ca href\u003d\"https://developers.atinternet-solutions.com/piano-analytics/data-collection/sdks/javascript#configuration\"\u003eavailable here\u003c/a\u003e",
    "newRowButtonText": "Add configuration"
  },
  {
    "type": "GROUP",
    "name": "deprecatedSettings",
    "displayName": "Deprecated settigns",
    "groupStyle": "ZIPPY_CLOSED",
    "subParams": [
      {
        "type": "TEXT",
        "name": "privacyDefaultMode",
        "displayName": "Privacy default mode (deprecated)",
        "simpleValueType": true,
        "defaultValue": ""
      },
      {
        "type": "GROUP",
        "name": "privacySettings",
        "displayName": "Privacy modes",
        "groupStyle": "ZIPPY_CLOSED",
        "subParams": [
          {
            "type": "GROUP",
            "name": "privacyStorageCommands",
            "displayName": "Storage commands",
            "groupStyle": "ZIPPY_OPEN_ON_PARAM",
            "subParams": [
              {
                "type": "SIMPLE_TABLE",
                "name": "privacyStorageActions",
                "displayName": "Privacy storage keys",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Action",
                    "name": "privacyStorageAction",
                    "type": "SELECT",
                    "selectItems": [
                      {
                        "value": "include.storageKey",
                        "displayValue": "Include storage key"
                      },
                      {
                        "value": "exclude.storageKey",
                        "displayValue": "Exclude storage key"
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Storage key",
                    "name": "privacyStorageKey",
                    "type": "TEXT"
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Privacy mode",
                    "name": "privacyStorageMode",
                    "type": "TEXT"
                  }
                ]
              }
            ]
          },
          {
            "type": "GROUP",
            "name": "privacyEventCommands",
            "displayName": "Events commands",
            "groupStyle": "ZIPPY_OPEN_ON_PARAM",
            "subParams": [
              {
                "type": "SIMPLE_TABLE",
                "name": "privacyEventActions",
                "displayName": "Privacy events",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Action",
                    "name": "privacyEventAction",
                    "type": "SELECT",
                    "selectItems": [
                      {
                        "value": "include.event",
                        "displayValue": "Include event"
                      },
                      {
                        "value": "exclude.event",
                        "displayValue": "Exclude event"
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Event name",
                    "name": "privacyEventKey",
                    "type": "TEXT"
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Privacy mode",
                    "name": "privacyEventMode",
                    "type": "TEXT"
                  }
                ]
              }
            ]
          },
          {
            "type": "GROUP",
            "name": "privacyPropCommands",
            "displayName": "Properties commands",
            "groupStyle": "ZIPPY_OPEN_ON_PARAM",
            "subParams": [
              {
                "type": "SIMPLE_TABLE",
                "name": "privacyPropActions",
                "displayName": "Privacy properties",
                "simpleTableColumns": [
                  {
                    "defaultValue": "",
                    "displayName": "Action",
                    "name": "privacyPropAction",
                    "type": "SELECT",
                    "selectItems": [
                      {
                        "value": "include.property",
                        "displayValue": "Include property"
                      },
                      {
                        "value": "exclude.property",
                        "displayValue": "Exclude property"
                      }
                    ]
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Property name",
                    "name": "privacyPropKey",
                    "type": "TEXT"
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Privacy mode",
                    "name": "privacyPropMode",
                    "type": "TEXT"
                  },
                  {
                    "defaultValue": "",
                    "displayName": "Event scope",
                    "name": "privacyPropEvent",
                    "type": "TEXT"
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const log = require('logToConsole');
const JSON = require('JSON');
const makeTableMap = require('makeTableMap');

log('GTM Piano Analytics Config Template - Config Data =', data);

let confObject = {};
confObject.collectDomain = data.collectDomain;
confObject.site = data.site;
confObject.sdkSrc = data.sdkSrc || "https://tag.aticdn.net/piano-analytics.js";
confObject.privacyDefaultMode = data.privacyDefaultMode || '';
confObject.consentDefaultMode = data.consentDefaultMode || 'opt-in';
confObject.queueVarName = data.queueVarName || '_paq';
const otherConf = (data.confTable) ? makeTableMap(data.confTable, 'confKey', 'confValue') : {};

let privacyArray = [];
const privacyStorageActions = data.privacyStorageActions || [];
const privacyEventActions = data.privacyEventActions || [];
const privacyPropActions = data.privacyPropActions || [];

let pdlObject = {};
if((confObject.privacyDefaultMode === '' && confObject.consentDefaultMode !== '') || data.consentItems) {
  pdlObject.requireConsent = true;
  pdlObject.consent = { defaultPreset: { PA: confObject.consentDefaultMode} };
}
if(data.consentItems) {
  pdlObject.consent_items = pdlObject.consent_items || {};
  pdlObject.consent_items.PA = pdlObject.consent_items.PA || {};
  data.consentItems.map(item => {
    pdlObject.consent_items.PA[item.consentItemType] = pdlObject.consent_items.PA[item.consentItemType] || {};
    pdlObject.consent_items.PA[item.consentItemType][item.consentItemKey] = item.consentItemPriority;
  });
}
if(pdlObject !== {}) confObject.pdlObject = pdlObject;

for (var privacyStorage of privacyStorageActions) { privacyArray.push([privacyStorage.privacyStorageAction, privacyStorage.privacyStorageKey, privacyStorage.privacyStorageMode]); }
for (var privacyEvent of privacyEventActions) { privacyArray.push([privacyEvent.privacyEventAction, privacyEvent.privacyEventKey, privacyEvent.privacyEventMode]); }
for (var privacyProp of privacyPropActions) { privacyArray.push([privacyProp.privacyPropAction, privacyProp.privacyPropKey, privacyProp.privacyPropMode, privacyProp.privacyPropEvent]); }

const keyToParse = ['campaignPrefix', 'cookieSecure', 'encodeStorageBase64', 'isVisitorClientSide', 'sendEventWhenOptout', 'enableUTMTracking'];
for (var conf in otherConf) {
  confObject[conf] = (keyToParse.indexOf(conf) > -1) ? JSON.parse(otherConf[conf]) : otherConf[conf];
}
confObject.privacy = privacyArray;

return confObject;


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 3/17/2023, 3:09:38 PM


