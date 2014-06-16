.class Lnet/metaps/sdk/y;
.super Ljava/lang/Object;
.source "JSController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/JSController;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/JSController;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/y;->a:Lnet/metaps/sdk/JSController;

    iput-object p2, p0, Lnet/metaps/sdk/y;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/metaps/sdk/y;->c:Ljava/lang/String;

    iput-object p4, p0, Lnet/metaps/sdk/y;->d:Ljava/lang/String;

    iput-object p5, p0, Lnet/metaps/sdk/y;->e:Ljava/lang/String;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/y;)Lnet/metaps/sdk/JSController;
    .locals 1
    .parameter

    .prologue
    .line 181
    iget-object v0, p0, Lnet/metaps/sdk/y;->a:Lnet/metaps/sdk/JSController;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 183
    iget-object v0, p0, Lnet/metaps/sdk/y;->a:Lnet/metaps/sdk/JSController;

    invoke-static {v0}, Lnet/metaps/sdk/JSController;->a(Lnet/metaps/sdk/JSController;)Landroid/app/Activity;

    move-result-object v3

    monitor-enter v3

    .line 184
    const/4 v1, 0x0

    .line 185
    const/4 v2, 0x0

    .line 187
    :try_start_0
    const-string v0, "sendTapTracking"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lnet/metaps/sdk/y;->b:Ljava/lang/String;

    iget-object v4, p0, Lnet/metaps/sdk/y;->c:Ljava/lang/String;

    invoke-static {v0, v4}, Lnet/metaps/sdk/Factory;->a(Ljava/lang/String;Ljava/lang/String;)Lnet/metaps/sdk/c;

    move-result-object v1

    .line 189
    iget-object v0, p0, Lnet/metaps/sdk/y;->d:Ljava/lang/String;

    iget-object v4, p0, Lnet/metaps/sdk/y;->e:Ljava/lang/String;

    invoke-static {v1, v0, v4}, Lnet/metaps/sdk/Factory;->a(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 193
    :goto_0
    if-nez v0, :cond_0

    .line 194
    :try_start_1
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 195
    monitor-exit v3

    .line 218
    :goto_1
    return-void

    .line 190
    :catch_0
    move-exception v0

    .line 191
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    move v0, v2

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lnet/metaps/sdk/y;->d:Ljava/lang/String;

    iget-object v2, p0, Lnet/metaps/sdk/y;->e:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lnet/metaps/sdk/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 199
    invoke-static {}, Lnet/metaps/util/d;->a()V

    .line 200
    if-eqz v0, :cond_1

    .line 201
    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 203
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 204
    const/high16 v0, 0x1000

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    new-instance v0, Landroid/os/Handler;

    iget-object v2, p0, Lnet/metaps/sdk/y;->a:Lnet/metaps/sdk/JSController;

    invoke-static {v2}, Lnet/metaps/sdk/JSController;->a(Lnet/metaps/sdk/JSController;)Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lnet/metaps/sdk/z;

    invoke-direct {v2, p0, v1}, Lnet/metaps/sdk/z;-><init>(Lnet/metaps/sdk/y;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_1
    monitor-exit v3

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
