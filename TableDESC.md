### visitorId: null,  
### visitNumber: 156,
### visitId: 1499068772,
### visitStartTime: 1499068772
### date: 20170703,
### totals.visits: 1,

### totals.hits: 1,
### totals.pageviews: 1,
そのセッションのページビュー数
### totals.timeOnSite: null,
セッション合計時間
```sql
SELECT 
  date,
  totals.timeOnSite
FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE
    _TABLE_SUFFIX BETWEEN '20160801' AND '20160810'
ORDER BY date
```
### totals.timeOnScreen: null,
とれない
### totals.bounces: 1,
直帰数 (1 or null)
```sql
SELECT 
  date,
  totals.bounces
FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE
    _TABLE_SUFFIX BETWEEN '20160801' AND '20160810'
ORDER BY date
```
### totals.transactions: null,
そのデータはトランザクションデータか否か(1 or null)
### totals.transactionRevenue
サポート終了しているらしい
### totals.newVisits
新規かリピートか（1 or null）
確認クエリ
```sql
SELECT 
   DISTINCT totals.newVisits
FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE
    _TABLE_SUFFIX = '20160801'
```
### totals.screenviews: null,
### totals.uniqueScreenviews: null,
### totals.totalTransactionRevenue: null,
そのデータのトランザクションによる総収益

```sql
SELECT 
  date,
   SUM(totals.totalTransactionRevenue)
FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE
    _TABLE_SUFFIX BETWEEN '20160801' AND '20160831'
   AND
    totals.transactions = 1
GROUP BY date
ORDER BY date
```
### totals.sessionQualityDim: null

### trafficSource.referralPath: null,
### trafficSource.campaign: (not set),
### trafficSource.source: (direct),
### trafficSource.medium: (none),
|ソース|
|:--:|
|organic|
|(none)|
|referral|
|cpc|
|affiliate|
|cpm|

```sql
SELECT 
  DISTINCT trafficSource.medium
FROM
    `bigquery-public-data.google_analytics_sample.ga_sessions_*`
  WHERE
    _TABLE_SUFFIX BETWEEN '20160801' AND '20160810'

```
### trafficSource.keyword: null,
### trafficSource.adContent: null,
### trafficSource.adwordsClickInfo.campaignId: null,
### trafficSource.adwordsClickInfo.adGroupId: null,
### trafficSource.adwordsClickInfo.creativeId: null,
### trafficSource.adwordsClickInfo.criteriaId: null,
### trafficSource.adwordsClickInfo.page: null,
### trafficSource.adwordsClickInfo.slot: null,
### trafficSource.adwordsClickInfo.criteriaParameters: not available in demo dataset,
### trafficSource.adwordsClickInfo.gclId: null,
### trafficSource.adwordsClickInfo.customerId: null,
### trafficSource.adwordsClickInfo.adNetworkType: null,
### trafficSource.adwordsClickInfo.targetingCriteria: null,
### trafficSource.adwordsClickInfo.isVideoAd: null
### trafficSource.isTrueDirect: true,
### trafficSource.campaignCode: null

### device.browser: Chrome,
### device.browserVersion: not available in demo dataset,
### device.browserSize: not available in demo dataset,
### device.operatingSystem: Macintosh,
### device.operatingSystemVersion: not available in demo dataset,
### device.isMobile: false,
### device.mobileDeviceBranding: not available in demo dataset,
### device.mobileDeviceModel: not available in demo dataset,
### device.mobileInputSelector: not available in demo dataset,
### device.mobileDeviceInfo: not available in demo dataset,
### device.mobileDeviceMarketingName: not available in demo dataset,
### device.flashVersion: not available in demo dataset,
### device.javaEnabled: null,
### device.language: not available in demo dataset,
### device.screenColors: not available in demo dataset,
### device.screenResolution: not available in demo dataset,
### device.deviceCategory: desktop

### geoNetwork.continent: Asia,
### geoNetwork.subContinent: Southeast Asia,
### geoNetwork.country: Singapore,
### geoNetwork.region: (not set),
### geoNetwork.metro: (not set),
### geoNetwork.city: Singapore,
### geoNetwork.cityId: not available in demo dataset,
### geoNetwork.networkDomain: (not set),
### geoNetwork.latitude: not available in demo dataset,
### geoNetwork.longitude: not available in demo dataset,
### geoNetwork.networkLocation: not available in demo dataset

### customDimensions.index: 4,
### customDimensions.value: APAC

### hits.hitNumber: 1,
### hits.time: 0,
### hits.hour: 0,
### hits.minute: 59,
### hits.isSecure: null,
### hits.isInteraction: true
falseの場合、そのセッションで他のイベントが発生しなかった場合。直帰となる
### hits.isEntrance: true,
### hits.isExit: true,
### hits.referer: null,
### hits.transaction": null,
### hits.tem": null,
### hits.contentInfo": null,

### page.pagePath: /home,
### page.hostname: www.googlemerchandisestore.com,
### page.pageTitle: Google Online Store,
### page.searchKeyword: null,
### page.searchCategory: null,
### page.pagePathLevel1: /home,
### page.pagePathLevel2: ,
### page.pagePathLevel3: ,
### page.pagePathLevel4:


### appInfo.name": null,
### appInfo.version": null,
### appInfo.id": null,
### appInfo.installerId": null,
### appInfo.appInstallerId": null,
### appInfo.appName": null,
### appInfo.appVersion": null,
### appInfo.appId": null,
### appInfo.screenName": "www.googlemerchandisestore.com/home",
### appInfo.landingScreenName": "www.googlemerchandisestore.com/home",
### appInfo.exitScreenName": "www.googlemerchandisestore.com/home",
### appInfo.screenDepth": "0"

### exceptionInfo.description": null,
### exceptionInfo.isFatal": true,
### exceptionInfo.exceptions": null,
### exceptionInfo.fatalExceptions": null
### eventInfo": null,
### product": [],
### promotion": [],
### promotionActionInfo": null,
### refund": null,
### eCommerceAction.action_type": "0",
### eCommerceAction.step": "1",
### eCommerceAction.option": null
### appInfo.experiment": [],
### appInfo.publisher": null,
### appInfo.customVariables": [],
### appInfo.customDimensions": [],
### appInfo.customMetrics": [],
### appInfo.type": "PAGE",
### social.socialInteractionNetwork": null,
### social.socialInteractionAction": null,
### social.socialInteractions": null,
### social.socialInteractionTarget": null,
### social.socialNetwork": "(not set)",
### social.uniqueSocialInteractions": null,
### social.hasSocialSourceReferral": "No",
### social.socialInteractionNetworkAction": " : "
### appInfo.latencyTracking": null,
### appInfo.sourcePropertyInfo": null
### contentGroup.contentGroup1": "(not set)",
### contentGroup.contentGroup2": "(not set)",
### contentGroup.contentGroup3": "(not set)",
### contentGroup.contentGroup4": "(not set)",
### contentGroup.contentGroup5": "(not set)",
### contentGroup.previousContentGroup1": "(entrance)",
### contentGroup.previousContentGroup2": "(entrance)",
### contentGroup.previousContentGroup3": "(entrance)",
### contentGroup.previousContentGroup4": "(entrance)",
### contentGroup.previousContentGroup5": "(entrance)",
### contentGroup.contentGroupUniqueViews1": null,
### contentGroup.contentGroupUniqueViews2": null,
### contentGroup.contentGroupUniqueViews3": null,
### contentGroup.contentGroupUniqueViews4": null,
### contentGroup.contentGroupUniqueViews5": null
### appInfo.dataSource": "web",
### appInfo.publisher_infos": []
### fullVisitorId": "4405445121320750966",
### userId": null,
### clientId": null,
### channelGrouping": "Direct",
### socialEngagementType": "Not Socially Engaged"
