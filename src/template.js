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

const keyToParse = ['campaignPrefix', 'cookieSecure', 'encodeStorageBase64', 'isVisitorClientSide', 'sendEventWhenOptout', 'enableUTMTracking', 'sendEmptyProperties', 'enableAutomaticPageRefresh', 'allowHighEntropyClientHints', 'enableExtendedOptout'];
for (var conf in otherConf) {
  confObject[conf] = (keyToParse.indexOf(conf) > -1 && typeof otherConf[conf] === 'string') ? JSON.parse(otherConf[conf]) : otherConf[conf];
}
confObject.privacy = privacyArray;

return confObject;