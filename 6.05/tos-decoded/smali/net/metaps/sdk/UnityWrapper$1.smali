.class Lnet/metaps/sdk/UnityWrapper$1;
.super Ljava/lang/Object;
.source "UnityWrapper.java"

# interfaces
.implements Lnet/metaps/sdk/Receiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/metaps/sdk/UnityWrapper;->initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public finalizeOnError(Lnet/metaps/sdk/Offer;)Z
    .locals 5
    .parameter "offer"

    .prologue
    .line 110
    :try_start_0
    const-string v2, "MetapsSDK"

    const-string v3, "Receiver finalizeOnError"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v1, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;

    invoke-direct {v1, p1}, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;-><init>(Lnet/metaps/sdk/Offer;)V

    .line 112
    .local v1, wrapperOffer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiverFinalizeOnError"

    invoke-virtual {v1}, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    const/4 v2, 0x1

    .end local v1           #wrapperOffer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    :goto_0
    return v2

    .line 113
    :catch_0
    move-exception v0

    .line 114
    .local v0, jsone:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public retrieve(ILnet/metaps/sdk/Offer;)Z
    .locals 5
    .parameter "points"
    .parameter "offer"

    .prologue
    .line 99
    :try_start_0
    const-string v2, "MetapsSDK"

    const-string v3, "Receiver retrieve"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    new-instance v1, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;

    invoke-direct {v1, p2}, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;-><init>(Lnet/metaps/sdk/Offer;)V

    .line 101
    .local v1, wrapperOffer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ReceiverRetrieve"

    invoke-virtual {v1}, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    const/4 v2, 0x1

    .end local v1           #wrapperOffer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    :goto_0
    return v2

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, jsone:Lorg/json/JSONException;
    const/4 v2, 0x0

    goto :goto_0
.end method
