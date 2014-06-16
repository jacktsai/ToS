.class public Lnet/metaps/sdk/I;
.super Ljava/lang/Object;
.source "TrackingInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field protected static final a:I = 0x29

.field protected static final b:I = 0x2a


# instance fields
.field private c:I

.field private d:Landroid/os/Handler;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/metaps/sdk/I;->d:Landroid/os/Handler;

    .line 32
    return-void
.end method

.method private b()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 66
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 67
    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    const-string v2, "INSTALLED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 79
    :goto_0
    return-void

    .line 72
    :cond_0
    const-string v1, "advertReportInstall"

    invoke-static {v1}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 74
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "aid"

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v3, Lnet/metaps/sdk/a;

    invoke-direct {v3}, Lnet/metaps/sdk/a;-><init>()V

    .line 76
    invoke-virtual {v3, v1, v2, v6, v6}, Lnet/metaps/sdk/a;->a(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    .line 78
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INSTALLED"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private c()V
    .locals 3

    .prologue
    .line 85
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/x;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "There is a referrer to notify "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 90
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "We notify the server that referrer is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 91
    :catch_0
    move-exception v1

    .line 92
    sget-object v1, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-static {v1, v0}, Lnet/metaps/sdk/x;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private d()J
    .locals 7

    .prologue
    .line 126
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 127
    const-string v1, "trackNoConnectSleepBase"

    invoke-static {v1}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 128
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v3

    const-wide/16 v5, 0xa

    div-long v5, v1, v5

    rem-long/2addr v3, v5

    add-long v0, v1, v3

    .line 129
    return-wide v0
.end method


# virtual methods
.method protected a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    iget v0, p0, Lnet/metaps/sdk/I;->c:I

    packed-switch v0, :pswitch_data_0

    .line 58
    :goto_0
    return-void

    .line 48
    :pswitch_0
    const-string v0, "Install send tracking"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lnet/metaps/sdk/I;->b()V

    goto :goto_0

    .line 52
    :pswitch_1
    const-string v0, "Referrer send tracking"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 53
    invoke-direct {p0}, Lnet/metaps/sdk/I;->c()V

    goto :goto_0

    .line 46
    :pswitch_data_0
    .packed-switch 0x29
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 38
    iput p1, p0, Lnet/metaps/sdk/I;->c:I

    .line 39
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    .line 99
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 100
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 101
    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lnet/metaps/sdk/I;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lnet/metaps/sdk/I;->d()J

    move-result-wide v1

    const-string v3, "trackNoConnectSleepMult"

    invoke-static {v3}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 120
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lnet/metaps/sdk/I;->d:Landroid/os/Handler;

    invoke-direct {p0}, Lnet/metaps/sdk/I;->d()J

    move-result-wide v1

    const-string v3, "trackNoConnectSleepMult"

    invoke-static {v3}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v3

    mul-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 109
    :cond_1
    :try_start_0
    const-string v0, "Start tracking thread!"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lnet/metaps/sdk/I;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 111
    :catch_0
    move-exception v0

    .line 112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 113
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lnet/metaps/sdk/I;->d:Landroid/os/Handler;

    const-string v1, "trackExceptionSleep"

    invoke-static {v1}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
