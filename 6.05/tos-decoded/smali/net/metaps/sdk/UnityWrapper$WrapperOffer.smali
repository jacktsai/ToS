.class public Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
.super Ljava/lang/Object;
.source "UnityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/metaps/sdk/UnityWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WrapperOffer"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private campaignId:Ljava/lang/String;

.field private packageName:Ljava/lang/String;

.field private rewardForMedia:I

.field private rewardForUser:I

.field private scenario:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(Lnet/metaps/sdk/Offer;)V
    .locals 1
    .parameter "offer"

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appId:Ljava/lang/String;

    .line 342
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getCampaignId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->campaignId:Ljava/lang/String;

    .line 343
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->packageName:Ljava/lang/String;

    .line 344
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getScenario()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->scenario:Ljava/lang/String;

    .line 345
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appName:Ljava/lang/String;

    .line 346
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getRewardForUser()I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForUser:I

    .line 347
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getRewardForMedia()I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForMedia:I

    .line 348
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->status:I

    .line 349
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 1
    .parameter "jsonObject"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appId:Ljava/lang/String;

    .line 357
    const-string v0, "campaignId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->campaignId:Ljava/lang/String;

    .line 358
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->packageName:Ljava/lang/String;

    .line 359
    const-string v0, "scenario"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->scenario:Ljava/lang/String;

    .line 360
    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appName:Ljava/lang/String;

    .line 361
    const-string v0, "rewardForUser"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForUser:I

    .line 362
    const-string v0, "rewardForMedia"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForMedia:I

    .line 363
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->status:I

    .line 364
    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 367
    iget-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 371
    iget-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->campaignId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    iget-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardForMedia()I
    .locals 1

    .prologue
    .line 391
    iget v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForMedia:I

    return v0
.end method

.method public getRewardForUser()I
    .locals 1

    .prologue
    .line 387
    iget v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForUser:I

    return v0
.end method

.method public getScenario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->scenario:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 395
    iget v0, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->status:I

    return v0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 404
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 405
    .local v0, jsonObject:Lorg/json/JSONObject;
    const-string v1, "appId"

    iget-object v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 406
    const-string v1, "campaignId"

    iget-object v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->campaignId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 407
    const-string v1, "packageName"

    iget-object v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 408
    const-string v1, "scenario"

    iget-object v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->scenario:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 409
    const-string v1, "appName"

    iget-object v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 410
    const-string v1, "rewardForUser"

    iget v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForUser:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 411
    const-string v1, "rewardForMedia"

    iget v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->rewardForMedia:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 412
    const-string v1, "status"

    iget v2, p0, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->status:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 413
    return-object v0
.end method
