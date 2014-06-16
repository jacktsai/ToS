.class Lnet/metaps/sdk/L;
.super Ljava/lang/Thread;
.source "WebViewTimeOutClient.java"


# instance fields
.field final synthetic a:Lnet/metaps/sdk/K;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/K;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/L;->a:Lnet/metaps/sdk/K;

    .line 35
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/L;)Lnet/metaps/sdk/K;
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lnet/metaps/sdk/L;->a:Lnet/metaps/sdk/K;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 38
    :try_start_0
    const-string v0, "webViewTimeOut"

    invoke-static {v0}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 40
    invoke-virtual {p0}, Lnet/metaps/sdk/L;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/L;->a:Lnet/metaps/sdk/K;

    invoke-virtual {v0}, Lnet/metaps/sdk/K;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lnet/metaps/sdk/L;->a:Lnet/metaps/sdk/K;

    invoke-static {v0}, Lnet/metaps/sdk/K;->a(Lnet/metaps/sdk/K;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 42
    iget-object v0, p0, Lnet/metaps/sdk/L;->a:Lnet/metaps/sdk/K;

    invoke-static {v0}, Lnet/metaps/sdk/K;->b(Lnet/metaps/sdk/K;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    iget-object v0, p0, Lnet/metaps/sdk/L;->a:Lnet/metaps/sdk/K;

    invoke-static {v0}, Lnet/metaps/sdk/K;->b(Lnet/metaps/sdk/K;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lnet/metaps/sdk/M;

    invoke-direct {v1, p0}, Lnet/metaps/sdk/M;-><init>(Lnet/metaps/sdk/L;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method
