.class public Lnet/metaps/sdk/E;
.super Ljava/lang/Object;
.source "Reporter.java"


# static fields
.field protected static final a:Ljava/lang/String; = "_Notify"

.field private static d:Lnet/metaps/sdk/E;

.field private static e:Ljava/lang/Object;

.field private static f:Z


# instance fields
.field private b:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lnet/metaps/sdk/Offer;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private g:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    sput-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lnet/metaps/sdk/E;->f:Z

    .line 32
    return-void
.end method

.method private constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    .line 38
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/metaps/sdk/E;->c:J

    .line 279
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 51
    invoke-direct {p0}, Lnet/metaps/sdk/E;->r()V

    .line 52
    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/E;J)J
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 485
    invoke-direct {p0, p1, p2}, Lnet/metaps/sdk/E;->b(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected static final a()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 94
    sget-object v1, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 95
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/E;->n()Lnet/metaps/sdk/E;

    move-result-object v0

    .line 96
    sget-boolean v2, Lnet/metaps/sdk/E;->f:Z

    if-eqz v2, :cond_0

    .line 97
    monitor-exit v1

    .line 102
    :goto_0
    return-void

    .line 99
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lnet/metaps/sdk/E;->f:Z

    .line 100
    const-string v2, "Reporter start!"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/E;->a(Ljava/lang/String;)V

    .line 94
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 454
    sget-object v1, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 455
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lnet/metaps/sdk/G;

    invoke-direct {v2, p0, p1}, Lnet/metaps/sdk/G;-><init>(Lnet/metaps/sdk/E;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 476
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 454
    monitor-exit v1

    .line 478
    return-void

    .line 454
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected static final a(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    sget-object v1, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 78
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/E;->n()Lnet/metaps/sdk/E;

    move-result-object v0

    .line 79
    new-instance v2, Lnet/metaps/sdk/Offer;

    invoke-direct {v2, p0, p1, p2}, Lnet/metaps/sdk/Offer;-><init>(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-direct {v0, v2}, Lnet/metaps/sdk/E;->a(Lnet/metaps/sdk/Offer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 81
    sget-boolean v2, Lnet/metaps/sdk/E;->f:Z

    if-eqz v2, :cond_0

    .line 82
    monitor-exit v1

    .line 88
    :goto_0
    return-void

    .line 84
    :cond_0
    const/4 v2, 0x1

    sput-boolean v2, Lnet/metaps/sdk/E;->f:Z

    .line 85
    const-string v2, "Reporter start!"

    invoke-direct {v0, v2}, Lnet/metaps/sdk/E;->a(Ljava/lang/String;)V

    .line 77
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lnet/metaps/sdk/Offer;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 121
    iget-object v2, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v2

    .line 122
    :try_start_0
    const-string v0, "_Notify"

    const-string v3, "Reporter.addHistory()"

    const-string v4, ""

    invoke-static {v0, v3, v4}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lnet/metaps/sdk/E;->r()V

    .line 124
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 125
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    const-string v0, "_Notify"

    const-string v3, "Reporter.addHistory()"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "do notification of tap. "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 142
    const-string v0, "_Notify"

    const-string v1, "Reporter.addHistory()"

    iget-object v3, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z

    .line 144
    monitor-exit v2

    const/4 v0, 0x1

    .line 147
    :goto_1
    return v0

    .line 126
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 127
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    const-string v4, "_Notify"

    const-string v5, "Reporter.addHistory()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " already in queue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v0

    if-nez v0, :cond_2

    .line 130
    const-string v0, "_Notify"

    const-string v4, "Reporter.addHistory()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is replaced as status if before logging"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_0

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 134
    :cond_2
    :try_start_1
    monitor-exit v2

    move v0, v1

    goto :goto_1

    .line 121
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v0, v1

    .line 147
    goto :goto_1
.end method

.method private b(J)J
    .locals 4
    .parameter

    .prologue
    .line 486
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 487
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 488
    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    const-wide/16 v2, 0xa

    div-long v2, p1, v2

    rem-long/2addr v0, v2

    add-long/2addr v0, p1

    .line 491
    :goto_0
    return-wide v0

    :cond_0
    const-wide/32 v0, 0xea60

    goto :goto_0
.end method

.method protected static final b()V
    .locals 2

    .prologue
    .line 107
    sget-object v1, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 108
    const/4 v0, 0x0

    :try_start_0
    sput-boolean v0, Lnet/metaps/sdk/E;->f:Z

    .line 107
    monitor-exit v1

    .line 110
    return-void

    .line 107
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private b(Lnet/metaps/sdk/Offer;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 406
    if-eqz p1, :cond_6

    .line 407
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v0

    if-nez v0, :cond_0

    .line 408
    const-string v0, "_Notify"

    const-string v1, "Reporter.sendOfferStatus()"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do notification of tap. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->i()Z

    .line 411
    :cond_0
    const/16 v0, 0xb

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 412
    const/16 v0, 0xc

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 413
    :cond_1
    const-string v0, "_Notify"

    const-string v1, "Reporter.sendOfferStatus()"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do notification of installing. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->j()Z

    .line 416
    :cond_2
    const/16 v0, 0x15

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 417
    const/16 v0, 0x16

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 418
    :cond_3
    const-string v0, "_Notify"

    const-string v1, "Reporter.sendOfferStatus()"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do confirm installing result. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->k()Z

    .line 421
    :cond_4
    const/16 v0, 0x1f

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 422
    const-string v0, "_Notify"

    const-string v1, "Reporter.sendOfferStatus()"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "do retrieve installing result. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->l()Z

    .line 425
    :cond_5
    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->checkStatus()V

    .line 427
    :cond_6
    return-void
.end method

.method protected static c()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 188
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    if-eqz v0, :cond_0

    .line 189
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    invoke-direct {v0}, Lnet/metaps/sdk/E;->q()Ljava/lang/String;

    move-result-object v0

    .line 191
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method private c(Lnet/metaps/sdk/Offer;)Z
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 538
    iget-object v1, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v1

    .line 540
    :try_start_0
    invoke-virtual {p0}, Lnet/metaps/sdk/E;->k()Ljava/util/List;

    move-result-object v0

    .line 541
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/16 v3, 0x14

    if-ge v2, v3, :cond_0

    .line 544
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 546
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 547
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 548
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 553
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 554
    const-string v2, "_Notify"

    const-string v3, "Reporter.saveLocalError()"

    invoke-static {v2, v3, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 556
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 557
    const-string v3, "metaps_tap_errors"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 558
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 542
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 538
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 549
    :cond_1
    :try_start_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 550
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected static d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lnet/metaps/sdk/E;->n()Lnet/metaps/sdk/E;

    .line 234
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    if-eqz v0, :cond_0

    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    invoke-virtual {v0}, Lnet/metaps/sdk/E;->g()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lnet/metaps/sdk/F;

    invoke-direct {v1}, Lnet/metaps/sdk/F;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 240
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 242
    :cond_0
    return-void
.end method

.method protected static e()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 248
    invoke-static {}, Lnet/metaps/sdk/E;->n()Lnet/metaps/sdk/E;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Lnet/metaps/sdk/E;->f()V

    .line 250
    return-void
.end method

.method protected static i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    if-eqz v0, :cond_0

    .line 498
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    invoke-virtual {v0}, Lnet/metaps/sdk/E;->j()Ljava/lang/String;

    move-result-object v0

    .line 500
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method static synthetic l()Lnet/metaps/sdk/E;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    return-object v0
.end method

.method static synthetic m()Z
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lnet/metaps/sdk/E;->f:Z

    return v0
.end method

.method private static final n()Lnet/metaps/sdk/E;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 59
    sget-object v1, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 60
    :try_start_0
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lnet/metaps/sdk/E;

    invoke-direct {v0}, Lnet/metaps/sdk/E;-><init>()V

    sput-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    .line 63
    :cond_0
    sget-object v0, Lnet/metaps/sdk/E;->d:Lnet/metaps/sdk/E;

    monitor-exit v1

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private o()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 154
    iget-object v1, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v1

    .line 155
    :try_start_0
    invoke-direct {p0}, Lnet/metaps/sdk/E;->p()Ljava/lang/String;

    move-result-object v0

    .line 156
    const-string v2, "_Notify"

    const-string v3, "Reporter.saveOfferHistories()"

    invoke-static {v2, v3, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v2

    .line 158
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 159
    const-string v3, "metaps_tap_history"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 160
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private p()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v2, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v2

    .line 170
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 171
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 172
    const/4 v0, 0x0

    move v1, v0

    .line 173
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 179
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v2

    return-object v0

    .line 174
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 175
    invoke-virtual {v0, v1}, Lnet/metaps/sdk/Offer;->d(I)V

    .line 176
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->h()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 169
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private q()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 200
    const-string v1, "metaps_tap_history"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 201
    return-object v0
.end method

.method private r()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 209
    iget-object v1, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v1

    .line 210
    :try_start_0
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    .line 211
    invoke-direct {p0}, Lnet/metaps/sdk/E;->q()Ljava/lang/String;

    move-result-object v0

    .line 212
    const-string v2, "_Notify"

    const-string v3, "Reporter.loadSavedOfferHistories()"

    invoke-static {v2, v3, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 214
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 216
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 222
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 223
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0, v4}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 209
    :cond_0
    monitor-exit v1

    .line 226
    return-void

    .line 218
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 219
    new-instance v5, Lnet/metaps/sdk/Offer;

    invoke-direct {v5, v0}, Lnet/metaps/sdk/Offer;-><init>(Lorg/json/JSONObject;)V

    .line 220
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(J)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 435
    sget-object v1, Lnet/metaps/sdk/E;->e:Ljava/lang/Object;

    monitor-enter v1

    .line 436
    :try_start_0
    sget-boolean v0, Lnet/metaps/sdk/E;->f:Z

    if-nez v0, :cond_0

    .line 437
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "stop background process. "

    .line 445
    :goto_0
    return-object v0

    .line 439
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/metaps/sdk/E;->c:J

    sub-long/2addr v2, v4

    cmp-long v0, v2, p1

    if-gez v0, :cond_1

    .line 440
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "Skip and post delayed!"

    goto :goto_0

    .line 442
    :cond_1
    :try_start_2
    const-string v0, "_Notify"

    const-string v2, "Reporter.checkProcessAndConfirmAll()"

    const-string v3, "do confirm queue."

    invoke-static {v0, v2, v3}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    invoke-virtual {p0}, Lnet/metaps/sdk/E;->h()I

    move-result v0

    .line 444
    const-string v2, "_Notify"

    const-string v3, "Reporter.checkProcessAndConfirmAll()"

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Queue count is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v0, "Unconfirmed count post delayed!"

    goto :goto_0

    .line 435
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method protected f()V
    .locals 7

    .prologue
    .line 255
    iget-object v1, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v1

    .line 257
    :try_start_0
    invoke-direct {p0}, Lnet/metaps/sdk/E;->r()V

    .line 258
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_1

    .line 270
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 259
    :goto_0
    :try_start_2
    monitor-exit v1

    .line 277
    :goto_1
    return-void

    .line 271
    :catch_0
    move-exception v0

    .line 272
    const-string v2, "_Notify"

    const-string v3, "Reporter.resetAllOfferStatus()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 261
    :cond_1
    :try_start_3
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 262
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result v0

    if-nez v0, :cond_2

    .line 270
    :try_start_4
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_4

    .line 255
    :goto_3
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 263
    :cond_2
    :try_start_6
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 264
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->a()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 266
    :catch_1
    move-exception v0

    .line 267
    :try_start_7
    const-string v2, "_Notify"

    const-string v3, "Reporter.resetAllOfferStatus()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 270
    :try_start_8
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_3

    .line 271
    :catch_2
    move-exception v0

    .line 272
    :try_start_9
    const-string v2, "_Notify"

    const-string v3, "Reporter.resetAllOfferStatus()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_3

    .line 268
    :catchall_1
    move-exception v0

    .line 270
    :try_start_a
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_3

    .line 275
    :goto_4
    :try_start_b
    throw v0

    .line 271
    :catch_3
    move-exception v2

    .line 272
    const-string v3, "_Notify"

    const-string v4, "Reporter.resetAllOfferStatus()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_4

    .line 271
    :catch_4
    move-exception v0

    .line 272
    const-string v2, "_Notify"

    const-string v3, "Reporter.resetAllOfferStatus()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_3
.end method

.method protected g()Z
    .locals 2

    .prologue
    .line 286
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1

    .line 287
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected h()I
    .locals 8

    .prologue
    .line 297
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lnet/metaps/sdk/E;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    monitor-exit v1

    .line 397
    :goto_0
    return v0

    .line 297
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    iget-object v2, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v2

    .line 305
    :try_start_1
    invoke-direct {p0}, Lnet/metaps/sdk/E;->r()V

    .line 306
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v0

    if-nez v0, :cond_2

    .line 388
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 393
    :goto_1
    :try_start_3
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 394
    const/4 v0, -0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 307
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 389
    :catch_0
    move-exception v0

    .line 390
    :try_start_7
    const-string v1, "_Notify"

    const-string v3, "Reporter.confirmAll()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 302
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    .line 393
    :catchall_2
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 308
    :cond_2
    :try_start_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lnet/metaps/sdk/E;->c:J

    sub-long/2addr v0, v3

    const-string v3, "minimumExecutionMillisec"

    invoke-static {v3}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-gez v0, :cond_3

    .line 309
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    move-result v0

    .line 388
    :try_start_b
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_1

    .line 393
    :goto_2
    :try_start_c
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 394
    const/4 v3, -0x1

    :try_start_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 309
    :try_start_e
    monitor-exit v2

    goto/16 :goto_0

    .line 389
    :catch_1
    move-exception v1

    .line 390
    const-string v3, "_Notify"

    const-string v4, "Reporter.confirmAll()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto :goto_2

    .line 393
    :catchall_3
    move-exception v0

    :try_start_f
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 311
    :cond_3
    :try_start_11
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_2

    .line 312
    :try_start_12
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 311
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 314
    :try_start_13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/metaps/sdk/E;->c:J

    .line 315
    const-string v0, "_Notify"

    const-string v1, "Reporter.confirmAll()"

    const-string v3, "the history queue is loaded."

    invoke-static {v0, v1, v3}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v0, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 318
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 319
    if-nez v0, :cond_4

    .line 320
    const-string v0, "_Notify"

    const-string v1, "_Noti null"

    invoke-static {v0, v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2

    move-result v0

    .line 388
    :try_start_14
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_3

    .line 393
    :goto_3
    :try_start_15
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    .line 394
    const/4 v3, -0x1

    :try_start_16
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 321
    :try_start_17
    monitor-exit v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    goto/16 :goto_0

    .line 311
    :catchall_4
    move-exception v0

    :try_start_18
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_4

    :try_start_19
    throw v0
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_2

    .line 382
    :catch_2
    move-exception v0

    .line 384
    :try_start_1a
    const-string v1, "_Notify"

    const-string v3, "Reporter.confirmAll()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_8

    .line 388
    :try_start_1b
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_8

    .line 393
    :goto_4
    :try_start_1c
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    .line 394
    const/4 v0, -0x1

    :try_start_1d
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_a

    .line 397
    :goto_5
    :try_start_1e
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    monitor-exit v2

    goto/16 :goto_0

    .line 389
    :catch_3
    move-exception v1

    .line 390
    const-string v3, "_Notify"

    const-string v4, "Reporter.confirmAll()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    goto/16 :goto_3

    .line 393
    :catchall_5
    move-exception v0

    :try_start_1f
    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    :try_start_20
    throw v0
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    .line 322
    :cond_4
    :try_start_21
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_5

    .line 323
    const-string v0, "_Notify"

    const-string v1, "_Noti !netInfo.isConnected()"

    invoke-static {v0, v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_2

    move-result v0

    .line 388
    :try_start_22
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_4

    .line 393
    :goto_6
    :try_start_23
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    .line 394
    const/4 v3, -0x1

    :try_start_24
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_6

    .line 324
    :try_start_25
    monitor-exit v2

    goto/16 :goto_0

    .line 389
    :catch_4
    move-exception v1

    .line 390
    const-string v3, "_Notify"

    const-string v4, "Reporter.confirmAll()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_1

    goto :goto_6

    .line 393
    :catchall_6
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_6

    :try_start_27
    throw v0
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    .line 326
    :cond_5
    :try_start_28
    const-string v0, "_Notify"

    const-string v1, "Report.confirmAll()"

    const-string v3, "the confirming network is passed."

    invoke-static {v0, v1, v3}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 329
    :goto_7
    :sswitch_0
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 381
    iput-object v3, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_2

    .line 388
    :try_start_29
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_29 .. :try_end_29} :catch_a

    .line 393
    :goto_8
    :try_start_2a
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    .line 394
    const/4 v0, -0x1

    :try_start_2b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1

    goto/16 :goto_5

    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_7

    :try_start_2c
    throw v0
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    .line 330
    :cond_6
    :try_start_2d
    iget-object v0, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 331
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->e()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 332
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 333
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2d} :catch_2

    goto :goto_7

    .line 385
    :catchall_8
    move-exception v0

    .line 388
    :try_start_2e
    invoke-direct {p0}, Lnet/metaps/sdk/E;->o()Z
    :try_end_2e
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_9

    .line 393
    :goto_9
    :try_start_2f
    iget-object v1, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    monitor-enter v1
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    .line 394
    const/4 v3, -0x1

    :try_start_30
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lnet/metaps/sdk/E;->g:Ljava/lang/Integer;

    .line 393
    monitor-exit v1
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_b

    .line 396
    :try_start_31
    throw v0
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 335
    :cond_7
    :try_start_32
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_2

    goto :goto_7

    .line 340
    :cond_8
    :try_start_33
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->isSendOfferStatus()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 341
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->b(Lnet/metaps/sdk/Offer;)V
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_9
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_33 .. :try_end_33} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_33 .. :try_end_33} :catch_6
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_33} :catch_7

    .line 357
    :cond_9
    :try_start_34
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 375
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_2

    goto :goto_7

    .line 343
    :catch_5
    move-exception v1

    .line 345
    :try_start_35
    const-string v4, "_Notify"

    const-string v5, "Reporter.confirmAll()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectionPoolTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_9

    .line 357
    :try_start_36
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_1

    .line 375
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 361
    :sswitch_1
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 362
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 364
    :cond_a
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 368
    :sswitch_2
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 369
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 371
    :cond_b
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_2

    goto/16 :goto_7

    .line 348
    :catch_6
    move-exception v1

    .line 350
    :try_start_37
    const-string v4, "_Notify"

    const-string v5, "Reporter.confirmAll()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_9

    .line 357
    :try_start_38
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_2

    .line 375
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 361
    :sswitch_3
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 362
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 364
    :cond_c
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 368
    :sswitch_4
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 369
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 371
    :cond_d
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_38} :catch_2

    goto/16 :goto_7

    .line 353
    :catch_7
    move-exception v1

    .line 354
    :try_start_39
    const-string v4, "_Notify"

    const-string v5, "Reporter.confirmAll()"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_9

    .line 357
    :try_start_3a
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v1

    sparse-switch v1, :sswitch_data_3

    .line 375
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 361
    :sswitch_5
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_e

    .line 362
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 364
    :cond_e
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 368
    :sswitch_6
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 369
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 371
    :cond_f
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 356
    :catchall_9
    move-exception v1

    .line 357
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getStatus()I

    move-result v4

    sparse-switch v4, :sswitch_data_4

    .line 375
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 361
    :sswitch_7
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 362
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    .line 378
    :goto_a
    :sswitch_8
    throw v1

    .line 364
    :cond_10
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 368
    :sswitch_9
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 369
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 371
    :cond_11
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 361
    :sswitch_a
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 362
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 364
    :cond_12
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    .line 368
    :sswitch_b
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->m()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 369
    invoke-direct {p0, v0}, Lnet/metaps/sdk/E;->c(Lnet/metaps/sdk/Offer;)Z

    goto/16 :goto_7

    .line 371
    :cond_13
    invoke-interface {v3, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_8
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3a} :catch_2

    goto/16 :goto_7

    .line 389
    :catch_8
    move-exception v0

    .line 390
    :try_start_3b
    const-string v1, "_Notify"

    const-string v3, "Reporter.confirmAll()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_1

    goto/16 :goto_4

    .line 393
    :catchall_a
    move-exception v0

    :try_start_3c
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3c .. :try_end_3c} :catchall_a

    :try_start_3d
    throw v0

    .line 389
    :catch_9
    move-exception v1

    .line 390
    const-string v3, "_Notify"

    const-string v4, "Reporter.confirmAll()"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1

    goto/16 :goto_9

    .line 393
    :catchall_b
    move-exception v0

    :try_start_3e
    monitor-exit v1
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_b

    :try_start_3f
    throw v0

    .line 389
    :catch_a
    move-exception v0

    .line 390
    const-string v1, "_Notify"

    const-string v3, "Reporter.confirmAll()"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_1

    goto/16 :goto_8

    .line 357
    nop

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_0
        0xc9 -> :sswitch_a
        0xca -> :sswitch_b
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x65 -> :sswitch_0
        0xc9 -> :sswitch_1
        0xca -> :sswitch_2
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x65 -> :sswitch_0
        0xc9 -> :sswitch_3
        0xca -> :sswitch_4
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x65 -> :sswitch_0
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
    .end sparse-switch

    :sswitch_data_4
    .sparse-switch
        0x65 -> :sswitch_8
        0xc9 -> :sswitch_7
        0xca -> :sswitch_9
    .end sparse-switch
.end method

.method protected j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 507
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 508
    const-string v1, "metaps_tap_errors"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected k()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/metaps/sdk/Offer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 516
    iget-object v1, p0, Lnet/metaps/sdk/E;->b:Ljava/util/Queue;

    monitor-enter v1

    .line 517
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 518
    invoke-virtual {p0}, Lnet/metaps/sdk/E;->j()Ljava/lang/String;

    move-result-object v0

    .line 519
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 520
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 521
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 522
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 527
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 529
    :cond_0
    monitor-exit v1

    return-object v2

    .line 523
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 524
    new-instance v5, Lnet/metaps/sdk/Offer;

    invoke-direct {v5, v0}, Lnet/metaps/sdk/Offer;-><init>(Lorg/json/JSONObject;)V

    .line 525
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 516
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
