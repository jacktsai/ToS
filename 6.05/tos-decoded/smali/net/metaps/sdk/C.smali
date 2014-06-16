.class Lnet/metaps/sdk/C;
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
    iput-object p1, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    .line 858
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 861
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    invoke-static {}, Lnet/metaps/sdk/Factory;->b()Lnet/metaps/sdk/Receiver;

    move-result-object v1

    iget-object v2, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    invoke-static {v2}, Lnet/metaps/sdk/Offer;->a(Lnet/metaps/sdk/Offer;)I

    move-result v2

    iget-object v3, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    invoke-interface {v1, v2, v3}, Lnet/metaps/sdk/Receiver;->retrieve(ILnet/metaps/sdk/Offer;)Z

    move-result v1

    invoke-static {v0, v1}, Lnet/metaps/sdk/Offer;->a(Lnet/metaps/sdk/Offer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    :goto_0
    monitor-enter p0

    .line 868
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 867
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 870
    return-void

    .line 862
    :catch_0
    move-exception v0

    .line 863
    iget-object v1, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lnet/metaps/sdk/Offer;->b(Lnet/metaps/sdk/Offer;Z)V

    .line 864
    iget-object v1, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    const/16 v2, 0x20

    invoke-static {v1, v2}, Lnet/metaps/sdk/Offer;->a(Lnet/metaps/sdk/Offer;I)V

    .line 865
    iget-object v1, p0, Lnet/metaps/sdk/C;->a:Lnet/metaps/sdk/Offer;

    const-string v2, "doRetrieve"

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lnet/metaps/sdk/Offer;->a(Lnet/metaps/sdk/Offer;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 867
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
