.class final Lnet/metaps/sdk/K;
.super Landroid/webkit/WebViewClient;
.source "WebViewTimeOutClient.java"


# instance fields
.field private a:Z

.field private b:Landroid/app/Activity;

.field private c:Landroid/webkit/WebView;

.field private d:Ljava/lang/Thread;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/metaps/sdk/K;->a:Z

    .line 20
    iput-object p1, p0, Lnet/metaps/sdk/K;->b:Landroid/app/Activity;

    .line 21
    iput-object p2, p0, Lnet/metaps/sdk/K;->c:Landroid/webkit/WebView;

    .line 22
    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/K;)Landroid/webkit/WebView;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lnet/metaps/sdk/K;->c:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lnet/metaps/sdk/K;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lnet/metaps/sdk/K;->b:Landroid/app/Activity;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 64
    iget-boolean v0, p0, Lnet/metaps/sdk/K;->a:Z

    return v0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/K;->d:Ljava/lang/Thread;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lnet/metaps/sdk/K;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lnet/metaps/sdk/K;->c:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 77
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 59
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/metaps/sdk/K;->a:Z

    .line 61
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "view"
    .parameter "url"
    .parameter "favicon"

    .prologue
    const/4 v2, 0x1

    .line 33
    iput-boolean v2, p0, Lnet/metaps/sdk/K;->a:Z

    .line 34
    iget-object v0, p0, Lnet/metaps/sdk/K;->b:Landroid/app/Activity;

    const-string v1, "loadingMessage"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lnet/metaps/util/d;->a(Landroid/app/Activity;ZLjava/lang/String;)V

    .line 35
    new-instance v0, Lnet/metaps/sdk/L;

    invoke-direct {v0, p0}, Lnet/metaps/sdk/L;-><init>(Lnet/metaps/sdk/K;)V

    iput-object v0, p0, Lnet/metaps/sdk/K;->d:Ljava/lang/Thread;

    .line 56
    iget-object v0, p0, Lnet/metaps/sdk/K;->d:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 57
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "view"
    .parameter "errorCode"
    .parameter "description"
    .parameter "failingUrl"

    .prologue
    const/16 v5, 0x11

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 83
    const/16 v0, 0x1f4

    if-gt v0, p2, :cond_0

    .line 84
    :try_start_0
    const-string v0, "webviewErrorMaintenance"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "UTF8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 86
    const-string v0, "text/html"

    const-string v2, "UTF8"

    invoke-virtual {p1, v1, v0, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "webviewErrorTimeOut"

    invoke-static {v0}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    const-string v2, "UTF8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 90
    const-string v0, "text/html"

    const-string v2, "UTF8"

    invoke-virtual {p1, v1, v0, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    iget-object v0, p0, Lnet/metaps/sdk/K;->b:Landroid/app/Activity;

    const-string v1, "webviewErrorTimeOut"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 94
    invoke-virtual {v0, v5, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 95
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    iget-object v1, p0, Lnet/metaps/sdk/K;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 98
    invoke-virtual {v0, v5, v3, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 99
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1
    .parameter "view"
    .parameter "url"

    .prologue
    .line 26
    iget-object v0, p0, Lnet/metaps/sdk/K;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
