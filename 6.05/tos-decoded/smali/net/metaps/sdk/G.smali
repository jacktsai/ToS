.class Lnet/metaps/sdk/G;
.super Ljava/lang/Object;
.source "Reporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/E;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/E;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/G;->a:Lnet/metaps/sdk/E;

    iput-object p2, p0, Lnet/metaps/sdk/G;->b:Ljava/lang/String;

    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 458
    :try_start_0
    const-string v0, "bgConfirmingSleepMillisec"

    invoke-static {v0}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v1

    .line 459
    iget-object v0, p0, Lnet/metaps/sdk/G;->b:Ljava/lang/String;

    .line 460
    :goto_0
    invoke-static {}, Lnet/metaps/sdk/E;->m()Z

    move-result v3

    if-nez v3, :cond_0

    .line 470
    const-string v0, "_Notify"

    const-string v1, "Reporter.checkProcessAndConfirmAll()"

    const-string v2, "stop background process. "

    invoke-static {v0, v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    :goto_1
    return-void

    .line 461
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v0, " : sleep time = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "ms"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 462
    const-string v3, "_Notify"

    const-string v4, "Reporter.checkProcessAndConfirmAll()"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 465
    const-string v0, "_Notify"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Reporter.checkProcessAndConfirmAll() : Thread for Reporter.postProcess finished to sleep "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lnet/metaps/sdk/E;->l()Lnet/metaps/sdk/E;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lnet/metaps/sdk/E;->a(J)Ljava/lang/String;

    move-result-object v0

    .line 468
    iget-object v3, p0, Lnet/metaps/sdk/G;->a:Lnet/metaps/sdk/E;

    invoke-static {v3, v1, v2}, Lnet/metaps/sdk/E;->a(Lnet/metaps/sdk/E;J)J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    goto :goto_0

    .line 471
    :catch_0
    move-exception v0

    .line 472
    const-string v1, "_Notify"

    const-string v2, "Reporter.checkProcessAndConfirmAll()"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
