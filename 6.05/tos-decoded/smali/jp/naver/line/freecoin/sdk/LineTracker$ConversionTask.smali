.class Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;
.super Ljava/lang/Object;
.source "LineTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljp/naver/line/freecoin/sdk/LineTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConversionTask"
.end annotation


# instance fields
.field final synthetic this$0:Ljp/naver/line/freecoin/sdk/LineTracker;


# direct methods
.method private constructor <init>(Ljp/naver/line/freecoin/sdk/LineTracker;)V
    .locals 0
    .parameter

    .prologue
    .line 470
    iput-object p1, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljp/naver/line/freecoin/sdk/LineTracker;Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 470
    invoke-direct {p0, p1}, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;-><init>(Ljp/naver/line/freecoin/sdk/LineTracker;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 474
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConversionTask referrer:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;
    invoke-static {v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$0(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 476
    monitor-enter p0

    .line 479
    :try_start_0
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->referrerLatch:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$1(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v4

    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$2()I

    move-result v5

    int-to-long v5, v5

    .line 480
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 479
    invoke-virtual {v4, v5, v6, v7}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 476
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    const-string v4, "referrerLatch size end"

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 494
    :cond_0
    :goto_0
    :try_start_2
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$4(Ljp/naver/line/freecoin/sdk/LineTracker;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$5(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->size()I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v4

    if-gtz v4, :cond_3

    .line 553
    :cond_1
    :goto_1
    return-void

    .line 481
    :catch_0
    move-exception v1

    .line 483
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_3
    const-string v4, "interrupted"

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 484
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$3()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 485
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 488
    :cond_2
    monitor-exit p0

    goto :goto_1

    .line 476
    .end local v1           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 496
    :cond_3
    :try_start_4
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$5(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 498
    .local v0, action:Ljava/lang/String;
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$0(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 499
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$0(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "no_referrer"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 500
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event not sent. No valid referrer received within "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 501
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 502
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$2()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v5

    .line 501
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 503
    const-string v5, " seconds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 500
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 504
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    const/4 v5, 0x1

    #setter for: Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z
    invoke-static {v4, v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$6(Ljp/naver/line/freecoin/sdk/LineTracker;Z)V

    .line 505
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    const-string v5, "no_referrer"

    iget-object v6, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;
    invoke-static {v6}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$7(Ljp/naver/line/freecoin/sdk/LineTracker;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljp/naver/line/freecoin/sdk/LineTracker;->setReferrer(Ljava/lang/String;Landroid/content/Context;)V

    .line 506
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    const/4 v5, -0x1

    #calls: Ljp/naver/line/freecoin/sdk/LineTracker;->saveStatus(Ljava/lang/String;I)V
    invoke-static {v4, v0, v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$8(Ljp/naver/line/freecoin/sdk/LineTracker;Ljava/lang/String;I)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 546
    .end local v0           #action:Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 547
    .local v1, e:Ljava/lang/RuntimeException;
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$3()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 549
    throw v1

    .line 509
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local v0       #action:Ljava/lang/String;
    :cond_5
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Sending event. action code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 510
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "ConversionTask is called action="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 512
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #calls: Ljp/naver/line/freecoin/sdk/LineTracker;->requestConversion(Ljava/lang/String;)Ljava/util/HashMap;
    invoke-static {v4, v0}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$9(Ljp/naver/line/freecoin/sdk/LineTracker;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v2

    .line 514
    .local v2, result:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 515
    .local v3, status:I
    if-eqz v2, :cond_6

    .line 517
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 520
    :cond_6
    if-ne v3, v8, :cond_7

    .line 521
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Event sent successfully: action code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", status code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 523
    const-string v5, ", referrer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;
    invoke-static {v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$0(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 521
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 529
    :goto_2
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #calls: Ljp/naver/line/freecoin/sdk/LineTracker;->saveStatus(Ljava/lang/String;I)V
    invoke-static {v4, v0, v3}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$8(Ljp/naver/line/freecoin/sdk/LineTracker;Ljava/lang/String;I)V

    .line 530
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "retry count:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I
    invoke-static {v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$10(Ljp/naver/line/freecoin/sdk/LineTracker;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", max retry:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 531
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$11()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 530
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 532
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$10(Ljp/naver/line/freecoin/sdk/LineTracker;)I

    move-result v4

    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$11()I

    move-result v5

    if-ge v4, v5, :cond_8

    if-nez v3, :cond_8

    .line 533
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$10(Ljp/naver/line/freecoin/sdk/LineTracker;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    #setter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I
    invoke-static {v4, v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$12(Ljp/naver/line/freecoin/sdk/LineTracker;I)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 535
    :try_start_6
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$10(Ljp/naver/line/freecoin/sdk/LineTracker;)I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 536
    :catch_2
    move-exception v1

    .line 537
    .local v1, e:Ljava/lang/InterruptedException;
    :try_start_7
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$3()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 538
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    .line 525
    .end local v1           #e:Ljava/lang/InterruptedException;
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to send event: action code="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 526
    const-string v5, ", status code="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", referrer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 527
    iget-object v5, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;
    invoke-static {v5}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$0(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 525
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 542
    :cond_8
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;->this$0:Ljp/naver/line/freecoin/sdk/LineTracker;

    #getter for: Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;
    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/LineTracker;->access$5(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/util/Queue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Queue;->poll()Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0
.end method
