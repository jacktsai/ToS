.class Lnet/metaps/sdk/D;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/Offer;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/Offer;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/D;->a:Lnet/metaps/sdk/Offer;

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 912
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/D;->a:Lnet/metaps/sdk/Offer;

    invoke-static {}, Lnet/metaps/sdk/Factory;->b()Lnet/metaps/sdk/Receiver;

    move-result-object v1

    iget-object v2, p0, Lnet/metaps/sdk/D;->a:Lnet/metaps/sdk/Offer;

    invoke-interface {v1, v2}, Lnet/metaps/sdk/Receiver;->finalizeOnError(Lnet/metaps/sdk/Offer;)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/metaps/sdk/Offer;->c(Lnet/metaps/sdk/Offer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 916
    :goto_0
    monitor-enter p0

    .line 917
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 916
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 919
    return-void

    .line 913
    :catch_0
    move-exception v0

    .line 914
    iget-object v1, p0, Lnet/metaps/sdk/D;->a:Lnet/metaps/sdk/Offer;

    const-string v2, "finalizeOnError"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "End with error, Receiver.finalizeOnError throw exception. retry later. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/metaps/sdk/Offer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 916
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
