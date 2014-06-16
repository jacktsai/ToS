.class public final Lnet/metaps/sdk/Factory;
.super Ljava/lang/Object;
.source "Factory.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldWriteableFiles",
        "WorldWriteableFiles",
        "WorldReadableFiles"
    }
.end annotation


# static fields
.field protected static a:Landroid/app/Activity;

.field private static b:Ljava/lang/Object;

.field private static c:Lnet/metaps/sdk/Receiver;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    sput-object v1, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    .line 60
    sput-object v1, Lnet/metaps/sdk/Factory;->c:Lnet/metaps/sdk/Receiver;

    .line 61
    sput-object v1, Lnet/metaps/sdk/Factory;->d:Ljava/lang/String;

    .line 62
    sput-object v1, Lnet/metaps/sdk/Factory;->e:Ljava/lang/String;

    .line 64
    sput-object v1, Lnet/metaps/sdk/Factory;->g:Ljava/lang/String;

    .line 65
    sput-object v1, Lnet/metaps/sdk/Factory;->h:Ljava/lang/String;

    .line 66
    sput-object v1, Lnet/metaps/sdk/Factory;->i:Ljava/lang/String;

    .line 67
    sput-object v1, Lnet/metaps/sdk/Factory;->j:Ljava/lang/String;

    .line 68
    sput-object v1, Lnet/metaps/sdk/Factory;->k:Ljava/lang/String;

    .line 69
    sput-object v1, Lnet/metaps/sdk/Factory;->l:Ljava/lang/String;

    .line 70
    sput-object v1, Lnet/metaps/sdk/Factory;->m:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljava/lang/String;Ljava/lang/String;)Lnet/metaps/sdk/c;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;,
            Lnet/metaps/util/ServerMaintenanceException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 340
    new-instance v0, Lnet/metaps/sdk/a;

    invoke-direct {v0}, Lnet/metaps/sdk/a;-><init>()V

    .line 341
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 342
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "aid"

    invoke-direct {v2, v3, p0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "campaign"

    invoke-direct {v2, v3, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 344
    const-string v2, "detailView"

    invoke-static {v2}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 345
    invoke-virtual {v0, v2, v1, v4, v4}, Lnet/metaps/sdk/a;->b(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 346
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Factory.getCampaign() : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 347
    new-instance v1, Lnet/metaps/sdk/c;

    invoke-direct {v1}, Lnet/metaps/sdk/c;-><init>()V

    .line 348
    invoke-virtual {v1, p0}, Lnet/metaps/sdk/c;->a(Ljava/lang/String;)V

    .line 349
    invoke-virtual {v1, p1}, Lnet/metaps/sdk/c;->b(Ljava/lang/String;)V

    .line 350
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lnet/metaps/sdk/c;->a(Lorg/json/JSONObject;)V

    .line 352
    return-object v1
.end method

.method protected static a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 361
    sget-object v1, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 362
    :try_start_0
    sget-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v2, "Call Factory.initialize(Activity activity, Receiver receiver, String clientId, String appId, String secret, int mode) before resetHistoryStatusAll!"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 365
    :cond_0
    :try_start_1
    invoke-static {}, Lnet/metaps/sdk/E;->e()V

    .line 361
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    return-void
.end method

.method private static a(Landroid/app/Activity;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 494
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->b(Landroid/app/Activity;)V

    .line 495
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->c(Landroid/app/Activity;)V

    .line 496
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->d(Landroid/app/Activity;)V

    .line 497
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->e(Landroid/app/Activity;)V

    .line 498
    return-void
.end method

.method protected static a(Landroid/content/Context;)Z
    .locals 1
    .parameter

    .prologue
    .line 452
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 453
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_3

    .line 455
    :cond_0
    const-string v0, "noNetworkError"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->b(Ljava/lang/String;)V

    .line 456
    instance-of v0, p0, Lnet/metaps/sdk/WallActivity;

    if-nez v0, :cond_1

    .line 457
    instance-of v0, p0, Lnet/metaps/sdk/StatusActivity;

    if-eqz v0, :cond_2

    .line 458
    :cond_1
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 459
    :cond_2
    const/4 v0, 0x0

    .line 461
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected static a(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 465
    sget-boolean v1, Lnet/metaps/sdk/Factory;->n:Z

    if-eqz v1, :cond_0

    .line 466
    sget-object v1, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 468
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 469
    const/4 v0, 0x1

    .line 474
    :cond_0
    :goto_0
    return v0

    .line 471
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected static final a(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;
        }
    .end annotation

    .prologue
    .line 296
    sget-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    if-nez v0, :cond_0

    .line 297
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v1, "Call Factory.initialize(Activity activity, Receiver receiver, String clientId, String appId, String secret, int mode) before sendDownloadTap!"

    invoke-direct {v0, v1}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 300
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2}, Lnet/metaps/sdk/E;->a(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 312
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 302
    :catch_0
    move-exception v1

    .line 303
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 304
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    .line 305
    instance-of v2, v1, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz v2, :cond_2

    .line 306
    const-string v0, "noNetworkError"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_1
    :goto_1
    invoke-static {v0}, Lnet/metaps/sdk/Factory;->b(Ljava/lang/String;)V

    .line 310
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_2
    instance-of v1, v1, Lorg/json/JSONException;

    if-eqz v1, :cond_1

    .line 308
    const-string v0, "serverConnectionError"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected static b()Lnet/metaps/sdk/Receiver;
    .locals 1

    .prologue
    .line 370
    sget-object v0, Lnet/metaps/sdk/Factory;->c:Lnet/metaps/sdk/Receiver;

    return-object v0
.end method

.method private static b(Landroid/app/Activity;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 501
    invoke-static {}, Lnet/metaps/sdk/H;->c()Ljava/util/List;

    move-result-object v3

    .line 502
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 503
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 504
    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    .line 511
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 519
    :cond_2
    return-void

    .line 504
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 505
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 506
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v6, v1, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 507
    new-instance v0, Lnet/metaps/util/DeviceInfoException;

    const-string v1, "deviceInfoError"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/metaps/util/DeviceInfoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 511
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 512
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 513
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 514
    new-instance v0, Lnet/metaps/util/DeviceInfoException;

    const-string v1, "deviceInfoError"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/metaps/util/DeviceInfoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static final b(Landroid/content/Context;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/InvalidSettingException;
        }
    .end annotation

    .prologue
    .line 483
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 484
    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 485
    new-instance v0, Lnet/metaps/sdk/InvalidSettingException;

    const-string v1, "android.permission.ACCESS_WIFI_STATE is needed in AndroidManifest.xml"

    invoke-direct {v0, v1}, Lnet/metaps/sdk/InvalidSettingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :cond_0
    return-void
.end method

.method private static final b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 320
    .line 321
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 322
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    new-instance v1, Lnet/metaps/sdk/e;

    invoke-direct {v1, p0}, Lnet/metaps/sdk/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 330
    :cond_0
    return-void
.end method

.method protected static c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    sget-object v0, Lnet/metaps/sdk/Factory;->d:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 375
    const-string v0, ""

    .line 377
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method private static c(Landroid/app/Activity;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 522
    invoke-static {}, Lnet/metaps/sdk/H;->d()Ljava/util/List;

    move-result-object v0

    .line 523
    const-string v1, "PATH"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 524
    if-nez v2, :cond_1

    .line 534
    :cond_0
    return-void

    .line 527
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 528
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v5, :cond_2

    aget-object v6, v4, v1

    .line 529
    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "/"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 530
    new-instance v0, Lnet/metaps/util/DeviceInfoException;

    const-string v1, "deviceInfoError"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/metaps/util/DeviceInfoException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 528
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static final checkInvitation()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;,
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 237
    sget-object v1, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 238
    :try_start_0
    sget-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    if-nez v0, :cond_0

    .line 239
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v2, "Call Factory.initialize(Activity activity, Receiver receiver, String clientId, String appId, String secret, int mode) before !"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 237
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 242
    :cond_0
    :try_start_1
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    const-string v2, "connectivity"

    invoke-virtual {v0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 243
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 244
    if-nez v0, :cond_1

    .line 245
    monitor-exit v1

    .line 269
    :goto_0
    return-void

    .line 246
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    monitor-exit v1

    goto :goto_0

    .line 250
    :cond_2
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    const-string v2, "METAPS_2_SDK_PREFERENCE"

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 251
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "METAPS"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 252
    const-string v3, "installed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 253
    monitor-exit v1

    goto :goto_0

    .line 256
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 257
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string v4, "aid"

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 258
    new-instance v3, Lnet/metaps/sdk/a;

    invoke-direct {v3}, Lnet/metaps/sdk/a;-><init>()V

    .line 259
    const-string v4, "advertTrack"

    invoke-static {v4}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v2, v5, v6}, Lnet/metaps/sdk/a;->c(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 261
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 262
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 263
    sget-object v2, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-virtual {v2, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 265
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "METAPS"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "installed"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 237
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method protected static d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lnet/metaps/sdk/Factory;->e:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 382
    const-string v0, ""

    .line 384
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method private static d(Landroid/app/Activity;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-static {}, Lnet/metaps/sdk/H;->e()Ljava/util/List;

    move-result-object v0

    .line 538
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 544
    return-void

    .line 538
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 539
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 540
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 541
    new-instance v0, Lnet/metaps/util/DeviceInfoException;

    const-string v1, "deviceInfoError"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/metaps/util/DeviceInfoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected static e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 388
    sget-object v0, Lnet/metaps/sdk/Factory;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 389
    const-string v0, ""

    .line 391
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method private static e(Landroid/app/Activity;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 547
    invoke-static {}, Lnet/metaps/sdk/H;->f()Ljava/util/List;

    move-result-object v0

    .line 548
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 549
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    return-void

    .line 549
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 551
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 552
    new-instance v0, Lnet/metaps/util/DeviceInfoException;

    const-string v3, "deviceInfoError"

    invoke-static {v3}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lnet/metaps/util/DeviceInfoException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected static f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    sget-object v0, Lnet/metaps/sdk/Factory;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 396
    const-string v0, ""

    .line 398
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 402
    sget-object v0, Lnet/metaps/sdk/Factory;->g:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 403
    const-string v0, ""

    .line 405
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "endUserId"
    .parameter "scenario"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;
        }
    .end annotation

    .prologue
    .line 164
    sget-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v1, "Call Factory.initialize(Activity activity, Receiver receiver, String clientId, String appId, String secret, int mode) before !"

    invoke-direct {v0, v1}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 167
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lnet/metaps/sdk/WallActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    const-string v1, "cuid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    const-string v1, "scn"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    return-object v0
.end method

.method protected static h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 409
    sget-object v0, Lnet/metaps/sdk/Factory;->i:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 410
    const-string v0, ""

    .line 412
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 416
    sget-object v0, Lnet/metaps/sdk/Factory;->j:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 417
    const-string v0, ""

    .line 419
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method public static final initialize(Landroid/app/Activity;Lnet/metaps/sdk/Receiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter "activity"
    .parameter "receiver"
    .parameter "clientId"
    .parameter "applicationId"
    .parameter "applicationKey"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/InvalidSettingException;,
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 98
    sget-object v1, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 99
    :try_start_0
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->b(Landroid/content/Context;)V

    .line 102
    invoke-static {p5}, Lnet/metaps/sdk/Const;->a(I)V

    .line 104
    invoke-static {}, Lnet/metaps/sdk/Factory;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    new-instance v0, Lnet/metaps/sdk/InvalidSettingException;

    const-string v2, "SDK running in emulator should be in test mode"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/InvalidSettingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 108
    :cond_0
    :try_start_1
    sput-object p0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    .line 109
    sput-object p1, Lnet/metaps/sdk/Factory;->c:Lnet/metaps/sdk/Receiver;

    .line 110
    sput-object p2, Lnet/metaps/sdk/Factory;->d:Ljava/lang/String;

    .line 111
    sput-object p3, Lnet/metaps/sdk/Factory;->e:Ljava/lang/String;

    .line 112
    sput-object p4, Lnet/metaps/sdk/Factory;->f:Ljava/lang/String;

    .line 116
    invoke-static {}, Lnet/metaps/sdk/H;->h()V

    .line 117
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 118
    invoke-static {p0}, Lnet/metaps/sdk/Factory;->a(Landroid/app/Activity;)V

    .line 124
    :goto_0
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 126
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/metaps/sdk/Factory;->g:Ljava/lang/String;

    .line 128
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/metaps/sdk/Factory;->h:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "android_id"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/metaps/sdk/Factory;->i:Ljava/lang/String;

    .line 132
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/metaps/sdk/Factory;->j:Ljava/lang/String;

    .line 134
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/metaps/sdk/Factory;->k:Ljava/lang/String;

    .line 136
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lnet/metaps/sdk/Factory;->l:Ljava/lang/String;

    .line 138
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/metaps/sdk/Factory;->m:Ljava/lang/String;

    .line 140
    const/4 v0, 0x1

    sput-boolean v0, Lnet/metaps/sdk/Factory;->n:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :try_start_2
    invoke-static {}, Lnet/metaps/sdk/E;->a()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 98
    :try_start_3
    monitor-exit v1

    .line 148
    return-void

    .line 120
    :cond_1
    invoke-static {}, Lnet/metaps/sdk/Factory;->o()V

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    new-instance v2, Lnet/metaps/sdk/InvalidSettingException;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lnet/metaps/sdk/InvalidSettingException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method protected static j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Lnet/metaps/sdk/Factory;->k:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 424
    const-string v0, ""

    .line 426
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 430
    sget-object v0, Lnet/metaps/sdk/Factory;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 431
    const-string v0, ""

    .line 433
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method protected static l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lnet/metaps/sdk/Factory;->m:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 438
    const-string v0, ""

    .line 440
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lnet/metaps/sdk/Factory;->m:Ljava/lang/String;

    goto :goto_0
.end method

.method public static launchOfferWall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "activity"
    .parameter "endUserId"
    .parameter "scenario"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/UninitializedException;
        }
    .end annotation

    .prologue
    .line 182
    invoke-static {p0, p1, p2}, Lnet/metaps/sdk/Factory;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 186
    :cond_0
    return-void
.end method

.method protected static final m()Z
    .locals 2

    .prologue
    .line 592
    sget-object v1, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 593
    :try_start_0
    sget-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    monitor-exit v1

    return v0

    .line 592
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static final n()Z
    .locals 2

    .prologue
    .line 490
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "sdk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static o()V
    .locals 7

    .prologue
    .line 560
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 561
    const-string v1, "metaps_checked_version_time"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 562
    const-string v3, "checkVersionInterval"

    invoke-static {v3}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v3

    .line 563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 564
    sub-long v3, v5, v3

    cmp-long v1, v3, v1

    if-lez v1, :cond_0

    .line 565
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 566
    const-string v1, "metaps_checked_version_time"

    invoke-interface {v0, v1, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 567
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 568
    invoke-static {}, Lnet/metaps/sdk/Factory;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 569
    const-string v0, "newVersionAvailable"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->b(Ljava/lang/String;)V

    .line 572
    :cond_0
    return-void
.end method

.method private static p()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 575
    invoke-static {}, Lnet/metaps/sdk/H;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 576
    invoke-static {}, Lnet/metaps/sdk/H;->g()Ljava/lang/String;

    move-result-object v0

    const-string v2, "\\."

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 577
    const-string v0, "2.1.1"

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    move v0, v1

    .line 578
    :goto_0
    array-length v4, v3

    if-lt v0, v4, :cond_1

    .line 588
    :cond_0
    :goto_1
    return v1

    .line 580
    :cond_1
    :try_start_0
    aget-object v4, v2, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v5, v3, v0

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-le v4, v5, :cond_2

    .line 581
    const/4 v1, 0x1

    goto :goto_1

    .line 578
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public static runInstallReport()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 279
    sget-object v1, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    :try_start_0
    sget-boolean v0, Lnet/metaps/sdk/Factory;->n:Z

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Lnet/metaps/sdk/UninitializedException;

    const-string v2, "Call Factory.initialize(Activity activity, Receiver receiver, String clientId, String appId, String secret, int mode) before runInstallReport!"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/UninitializedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 279
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 283
    :cond_0
    :try_start_1
    invoke-static {}, Lnet/metaps/sdk/E;->d()V

    .line 279
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 285
    return-void
.end method

.method public static final sendAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "activity"
    .parameter "clientId"
    .parameter "applicationId"
    .parameter "applicationKey"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/sdk/InvalidSettingException;,
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 205
    sget-object v6, Lnet/metaps/sdk/Factory;->b:Ljava/lang/Object;

    monitor-enter v6

    .line 206
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lnet/metaps/sdk/Factory;->initialize(Landroid/app/Activity;Lnet/metaps/sdk/Receiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 209
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 210
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 211
    if-nez v0, :cond_0

    .line 212
    monitor-exit v6

    .line 222
    :goto_0
    return-void

    .line 213
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 214
    monitor-exit v6

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 218
    :cond_1
    :try_start_1
    new-instance v0, Lnet/metaps/sdk/I;

    invoke-direct {v0}, Lnet/metaps/sdk/I;-><init>()V

    .line 219
    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Lnet/metaps/sdk/I;->a(I)V

    .line 220
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 205
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
