.class public Ljp/naver/line/freecoin/sdk/LineFreeCoinReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LineFreeCoinReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 12
    const-string v1, "referrer"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, referrer:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "LINE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 15
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referrer received. Invalid value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 16
    const-string v1, "ReferrerReceiver.onReceive: NO_REFERRER"

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->getInstance()Ljp/naver/line/freecoin/sdk/LineTracker;

    move-result-object v1

    const-string v2, "no_referrer"

    invoke-virtual {v1, v2, p1}, Ljp/naver/line/freecoin/sdk/LineTracker;->setReferrer(Ljava/lang/String;Landroid/content/Context;)V

    .line 26
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referrer received. Valid value:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 22
    const-string v1, "ReferrerReceiver.onReceive: setReferrer"

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 23
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->getInstance()Ljp/naver/line/freecoin/sdk/LineTracker;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Ljp/naver/line/freecoin/sdk/LineTracker;->setReferrer(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method
