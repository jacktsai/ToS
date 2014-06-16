.class public Lnet/metaps/sdk/JSController;
.super Ljava/lang/Object;
.source "JSController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldWriteableFiles"
    }
.end annotation


# static fields
.field private static final a:I = 0x1e


# instance fields
.field private b:Landroid/app/Activity;

.field private c:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1
    .parameter "activity"
    .parameter "webView"

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/metaps/sdk/JSController;->c:Landroid/webkit/WebView;

    .line 58
    iput-object p1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    .line 59
    iput-object p2, p0, Lnet/metaps/sdk/JSController;->c:Landroid/webkit/WebView;

    .line 60
    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/JSController;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private a()Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 344
    monitor-enter p0

    .line 345
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 346
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v1

    .line 347
    const-string v3, "metaps_result_errors"

    const-string v4, ""

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 348
    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 350
    array-length v4, v3

    move v1, v0

    :goto_0
    if-lt v1, v4, :cond_1

    .line 358
    :cond_0
    monitor-exit p0

    return-object v2

    .line 350
    :cond_1
    aget-object v5, v3, v1

    .line 351
    const/16 v6, 0x1e

    if-gt v0, v6, :cond_0

    .line 353
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2

    .line 354
    add-int/lit8 v0, v0, 0x1

    .line 355
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 344
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(I)V
    .locals 0
    .parameter

    .prologue
    .line 573
    invoke-static {p1}, Lnet/metaps/sdk/FeaturedAppDialog;->a(I)V

    .line 574
    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/JSController;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 572
    invoke-direct {p0, p1}, Lnet/metaps/sdk/JSController;->a(I)V

    return-void
.end method

.method public static final start(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "activity"
    .parameter "webView"
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
    .line 78
    new-instance v6, Lnet/metaps/sdk/JSController;

    invoke-direct {v6, p0, p1}, Lnet/metaps/sdk/JSController;-><init>(Landroid/app/Activity;Landroid/webkit/WebView;)V

    .line 79
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lnet/metaps/sdk/Factory;->initialize(Landroid/app/Activity;Lnet/metaps/sdk/Receiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 80
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 81
    const-string v0, "MetapsJs"

    invoke-virtual {p1, v6, v0}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    return-void
.end method


# virtual methods
.method public confirmOfferResultAll()I
    .locals 1

    .prologue
    .line 312
    monitor-enter p0

    .line 314
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Factory;->runInstallReport()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    :try_start_1
    monitor-exit p0

    const/4 v0, 0x0

    .line 318
    :goto_0
    return v0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 318
    monitor-exit p0

    const/4 v0, -0x1

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public doTapGooglePlus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "endUserId"
    .parameter "scenario"
    .parameter "comment"
    .parameter "linkUrl"

    .prologue
    .line 430
    const-string v0, "Google+"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 431
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 456
    :goto_0
    return-void

    .line 435
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 436
    const-string v0, "android.intent.extra.TEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    const-string v0, "text/plain"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 438
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 439
    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 440
    const/4 v1, 0x0

    .line 441
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 448
    :goto_1
    if-eqz v0, :cond_3

    .line 449
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 441
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 442
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.google.android.apps.plus"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 443
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    const/4 v0, 0x1

    .line 445
    goto :goto_1

    .line 451
    :cond_3
    const-string v0, "Google+ app not installed so publish via web (can only publish url)"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://plus.google.com/share?url="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 453
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 454
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public doTapTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "endUserId"
    .parameter "scenario"
    .parameter "comment"
    .parameter "linkUrl"

    .prologue
    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Twitter comment=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] and linkUrl=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 419
    :goto_0
    return-void

    .line 398
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v0, "android.intent.action.SEND"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 399
    const-string v0, "android.intent.extra.TEXT"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 400
    const-string v0, "text/plain"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 402
    const/high16 v1, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 403
    const/4 v1, 0x0

    .line 404
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 411
    :goto_1
    if-eqz v0, :cond_3

    .line 412
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 405
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v5, "com.twitter.android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    const/4 v0, 0x1

    .line 408
    goto :goto_1

    .line 414
    :cond_3
    const-string v0, "Twitter app not installed so publish via web"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 415
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://twitter.com/share?text="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 416
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 417
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public final finish()V
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 382
    :cond_0
    return-void
.end method

.method public getErrorTextLineList()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    .line 277
    invoke-direct {p0}, Lnet/metaps/sdk/JSController;->a()Ljava/util/List;

    move-result-object v0

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 280
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 302
    return-object v4

    .line 281
    :cond_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 282
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 283
    const-string v1, "\t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 284
    array-length v0, v3

    if-lt v0, v9, :cond_1

    const/4 v0, 0x0

    aget-object v0, v3, v0

    .line 285
    :goto_1
    array-length v1, v3

    if-lt v1, v10, :cond_2

    aget-object v1, v3, v9

    .line 286
    :goto_2
    array-length v2, v3

    if-lt v2, v11, :cond_3

    aget-object v2, v3, v10

    .line 287
    :goto_3
    array-length v7, v3

    const/4 v8, 0x4

    if-lt v7, v8, :cond_4

    aget-object v3, v3, v11

    .line 289
    :goto_4
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 290
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v8, ":"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 291
    const/16 v0, 0xc9

    if-ne v0, v7, :cond_5

    .line 292
    const-string v0, " installed by another media!"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 298
    :goto_5
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 299
    :catch_0
    move-exception v0

    goto :goto_0

    .line 284
    :cond_1
    const-string v0, ""

    goto :goto_1

    .line 285
    :cond_2
    const-string v1, ""

    goto :goto_2

    .line 286
    :cond_3
    const-string v2, "201"

    goto :goto_3

    .line 287
    :cond_4
    const-string v3, ""

    goto :goto_4

    .line 293
    :cond_5
    const/16 v0, 0xca

    if-ne v0, v7, :cond_6

    .line 294
    :try_start_1
    const-string v0, " already installed!"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 296
    :cond_6
    const-string v0, " error "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5
.end method

.method public getErrorUsingJSON()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    invoke-static {}, Lnet/metaps/sdk/E;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getErrorsText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 262
    invoke-virtual {p0}, Lnet/metaps/sdk/JSController;->getErrorTextLineList()Ljava/util/List;

    move-result-object v0

    .line 263
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 264
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 265
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 266
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public getQueueUsingJSON()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/E;->c()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 234
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"error\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public isInstalled(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "packageName"
    .parameter "refreshInstalledPackageList"

    .prologue
    .line 371
    invoke-static {p1}, Lnet/metaps/sdk/Factory;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public jumpMarket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "campaignId"
    .parameter "appId"
    .parameter "endUserId"

    .prologue
    .line 164
    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lnet/metaps/sdk/JSController;->jumpMarket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public jumpMarket(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "campaignId"
    .parameter "appId"
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    .line 177
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    const-string v1, "loadingMessage"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/metaps/util/d;->a(Landroid/app/Activity;Ljava/lang/String;)V

    .line 181
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lnet/metaps/sdk/y;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/metaps/sdk/y;-><init>(Lnet/metaps/sdk/JSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 220
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public movePage(Ljava/lang/String;)V
    .locals 7
    .parameter "url"

    .prologue
    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 495
    new-instance v0, Lnet/metaps/sdk/a;

    invoke-direct {v0}, Lnet/metaps/sdk/a;-><init>()V

    .line 496
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 498
    const/4 v2, 0x1

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v0, p1, v1, v2, v3}, Lnet/metaps/sdk/a;->c(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object p1

    .line 499
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->c:Landroid/webkit/WebView;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 509
    :goto_0
    return-void

    .line 500
    :catch_0
    move-exception v0

    .line 501
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Lnet/metaps/util/DeviceInfoException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 502
    invoke-virtual {v0, v6, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 503
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 504
    :catch_1
    move-exception v0

    .line 505
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 506
    invoke-virtual {v0, v6, v4, v4}, Landroid/widget/Toast;->setGravity(III)V

    .line 507
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public prepareFeaturedApp(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    .line 546
    :try_start_0
    invoke-static {p1, p2}, Lnet/metaps/sdk/FeaturedAppDialog;->prepare(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/metaps/sdk/UninitializedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 550
    :goto_0
    return-void

    .line 547
    :catch_0
    move-exception v0

    .line 548
    invoke-virtual {v0}, Lnet/metaps/sdk/UninitializedException;->printStackTrace()V

    goto :goto_0
.end method

.method public resetAllHistoryStatus()V
    .locals 1

    .prologue
    .line 329
    monitor-enter p0

    .line 331
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Factory;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    :goto_0
    :try_start_1
    monitor-exit p0

    .line 337
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public sendViaKakaoTalk(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "subject"
    .parameter "text"

    .prologue
    .line 518
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 519
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 520
    if-eqz p1, :cond_0

    .line 521
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 523
    :cond_0
    if-eqz p2, :cond_1

    .line 524
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 526
    :cond_1
    const-string v1, "com.kakao.talk"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 527
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 528
    return-void
.end method

.method public share(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "subject"
    .parameter "message"

    .prologue
    .line 475
    new-instance v0, Landroid/content/Intent;

    .line 476
    const-string v1, "android.intent.action.SEND"

    .line 475
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 477
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 479
    const-string v1, "android.intent.extra.SUBJECT"

    .line 478
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 482
    const-string v1, "android.intent.extra.TEXT"

    .line 481
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    .line 486
    const-string v2, "Share app detail"

    .line 485
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 484
    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 488
    return-void
.end method

.method public showBrowser(Ljava/lang/String;)V
    .locals 3
    .parameter "url"

    .prologue
    .line 463
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lnet/metaps/sdk/JSController;->a(I)V

    .line 464
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 465
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 466
    return-void
.end method

.method public showCampaign(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "appId"
    .parameter "endUserId"

    .prologue
    .line 129
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lnet/metaps/sdk/JSController;->showCampaign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method public showCampaign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "appId"
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    .line 141
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    instance-of v0, v0, Lnet/metaps/sdk/WallActivity;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    check-cast v0, Lnet/metaps/sdk/WallActivity;

    invoke-virtual {v0, p1, p2, p3}, Lnet/metaps/sdk/WallActivity;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :goto_0
    return-void

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-static {v0, p2, p3}, Lnet/metaps/sdk/Factory;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 147
    const-string v1, "aid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v0

    .line 150
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showErrors()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 250
    invoke-virtual {p0}, Lnet/metaps/sdk/JSController;->getErrorsText()Ljava/lang/String;

    move-result-object v0

    .line 251
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 252
    const/16 v1, 0x11

    invoke-virtual {v0, v1, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 253
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 254
    return-void
.end method

.method public showFeaturedApp(Z)V
    .locals 2
    .parameter "withWaitingDialog"

    .prologue
    .line 561
    const/4 v0, 0x0

    .line 562
    if-eqz p1, :cond_0

    .line 563
    new-instance v0, Lnet/metaps/sdk/A;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/A;-><init>(Lnet/metaps/sdk/JSController;)V

    .line 566
    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lnet/metaps/sdk/FeaturedAppDialog;->show(Landroid/app/Activity;Lnet/metaps/sdk/FeaturedAppDialogListener;)V
    :try_end_0
    .catch Lnet/metaps/sdk/UninitializedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 567
    :catch_0
    move-exception v0

    .line 568
    invoke-virtual {v0}, Lnet/metaps/sdk/UninitializedException;->printStackTrace()V

    goto :goto_0
.end method

.method public showOfferWall(Ljava/lang/String;)V
    .locals 1
    .parameter "endUserId"

    .prologue
    .line 90
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lnet/metaps/sdk/JSController;->showOfferWall(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public showOfferWall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    .line 101
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lnet/metaps/sdk/Factory;->getIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 102
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public showStatus()V
    .locals 3

    .prologue
    .line 114
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    const-class v2, Lnet/metaps/sdk/StatusActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 115
    iget-object v1, p0, Lnet/metaps/sdk/JSController;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :goto_0
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
