.class Lnet/metaps/sdk/m;
.super Ljava/lang/Thread;
.source "FeaturedAppDialog.java"


# instance fields
.field private final synthetic a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/m;->a:Landroid/app/Activity;

    .line 209
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 212
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->c()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 214
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(I)V

    .line 215
    const-string v0, "Featured app thread started"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    :try_start_1
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->d()Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    :try_start_2
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->d()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->join()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 225
    :cond_0
    :goto_0
    :try_start_3
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 227
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->e()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    .line 228
    :try_start_4
    iget-object v0, p0, Lnet/metaps/sdk/m;->a:Landroid/app/Activity;

    new-instance v3, Lnet/metaps/sdk/n;

    iget-object v4, p0, Lnet/metaps/sdk/m;->a:Landroid/app/Activity;

    invoke-direct {v3, p0, v4}, Lnet/metaps/sdk/n;-><init>(Lnet/metaps/sdk/m;Landroid/app/Activity;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 233
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 227
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 242
    :goto_1
    :try_start_5
    const-string v0, "Featured app thread stoped"

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 212
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 244
    return-void

    .line 220
    :catch_0
    move-exception v0

    .line 221
    :try_start_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lnet/metaps/sdk/m;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/app/Activity;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_0

    .line 238
    :catch_1
    move-exception v0

    .line 239
    :try_start_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lnet/metaps/sdk/m;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 212
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    throw v0

    .line 227
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0

    .line 236
    :cond_1
    iget-object v0, p0, Lnet/metaps/sdk/m;->a:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/app/Activity;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_1
.end method
