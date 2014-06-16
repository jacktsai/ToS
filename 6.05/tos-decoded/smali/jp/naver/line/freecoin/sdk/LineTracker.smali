.class public Ljp/naver/line/freecoin/sdk/LineTracker;
.super Ljava/lang/Object;
.source "LineTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;
    }
.end annotation


# static fields
.field public static final ACTION_INSTALL:Ljava/lang/String; = "install"

.field public static final DONE:I = 0x1

.field public static final RETRY:I

.field private static RETRY_NUM:I

.field private static SOCKET_TIMEOUT:I

.field private static TIMEOUT:I

.field private static WAIT_TIME_REFERRER:I

.field private static isDebug:Z

.field private static sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;


# instance fields
.field private volatile isCancelled:Z

.field private mContext:Landroid/content/Context;

.field private mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mReferrer:Ljava/lang/String;

.field private volatile mRetryCount:I

.field private mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private mTasks:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mThread:Ljava/lang/Thread;

.field private referrerLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/16 v1, 0x2710

    .line 49
    const/4 v0, 0x0

    sput-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    .line 54
    const v0, 0xea60

    sput v0, Ljp/naver/line/freecoin/sdk/LineTracker;->WAIT_TIME_REFERRER:I

    .line 55
    sput v1, Ljp/naver/line/freecoin/sdk/LineTracker;->TIMEOUT:I

    .line 56
    sput v1, Ljp/naver/line/freecoin/sdk/LineTracker;->SOCKET_TIMEOUT:I

    .line 57
    const/16 v0, 0xa

    sput v0, Ljp/naver/line/freecoin/sdk/LineTracker;->RETRY_NUM:I

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    .line 47
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I

    .line 75
    const-string v0, "LineTracker constructor"

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 77
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 78
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 80
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->referrerLatch:Ljava/util/concurrent/CountDownLatch;

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    .line 84
    return-void
.end method

.method static synthetic access$0(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/util/concurrent/CountDownLatch;
    .locals 1
    .parameter

    .prologue
    .line 64
    iget-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->referrerLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$10(Ljp/naver/line/freecoin/sdk/LineTracker;)I
    .locals 1
    .parameter

    .prologue
    .line 72
    iget v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I

    return v0
.end method

.method static synthetic access$11()I
    .locals 1

    .prologue
    .line 57
    sget v0, Ljp/naver/line/freecoin/sdk/LineTracker;->RETRY_NUM:I

    return v0
.end method

.method static synthetic access$12(Ljp/naver/line/freecoin/sdk/LineTracker;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 72
    iput p1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I

    return-void
.end method

.method static synthetic access$2()I
    .locals 1

    .prologue
    .line 54
    sget v0, Ljp/naver/line/freecoin/sdk/LineTracker;->WAIT_TIME_REFERRER:I

    return v0
.end method

.method static synthetic access$3()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    return v0
.end method

.method static synthetic access$4(Ljp/naver/line/freecoin/sdk/LineTracker;)Z
    .locals 1
    .parameter

    .prologue
    .line 63
    iget-boolean v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z

    return v0
.end method

.method static synthetic access$5(Ljp/naver/line/freecoin/sdk/LineTracker;)Ljava/util/Queue;
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$6(Ljp/naver/line/freecoin/sdk/LineTracker;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z

    return-void
.end method

.method static synthetic access$7(Ljp/naver/line/freecoin/sdk/LineTracker;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 50
    iget-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$8(Ljp/naver/line/freecoin/sdk/LineTracker;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 308
    invoke-direct {p0, p1, p2}, Ljp/naver/line/freecoin/sdk/LineTracker;->saveStatus(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$9(Ljp/naver/line/freecoin/sdk/LineTracker;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 338
    invoke-direct {p0, p1}, Ljp/naver/line/freecoin/sdk/LineTracker;->requestConversion(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private addTaskToQueue(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addTaskToQueue: action="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 270
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljp/naver/line/freecoin/sdk/LineTracker;->saveStatus(Ljava/lang/String;I)V

    .line 271
    iget-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    iget-object v0, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_0
    return-void
.end method

.method private getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;
    .locals 8

    .prologue
    .line 437
    new-instance v2, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v2}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 438
    .local v2, params:Lorg/apache/http/params/HttpParams;
    sget v4, Ljp/naver/line/freecoin/sdk/LineTracker;->TIMEOUT:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 439
    sget v4, Ljp/naver/line/freecoin/sdk/LineTracker;->SOCKET_TIMEOUT:I

    invoke-static {v2, v4}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 441
    new-instance v3, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v3}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    .line 442
    .local v3, registry:Lorg/apache/http/conn/scheme/SchemeRegistry;
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "http"

    .line 443
    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v6

    const/16 v7, 0x50

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 442
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 445
    new-instance v4, Lorg/apache/http/conn/scheme/Scheme;

    const-string v5, "https"

    .line 446
    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v6

    const/16 v7, 0x1bb

    invoke-direct {v4, v5, v6, v7}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    .line 445
    invoke-virtual {v3, v4}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 449
    new-instance v1, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    .line 452
    .local v1, manager:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0, v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 454
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    return-object v0
.end method

.method public static declared-synchronized getInstance()Ljp/naver/line/freecoin/sdk/LineTracker;
    .locals 3

    .prologue
    .line 88
    const-class v1, Ljp/naver/line/freecoin/sdk/LineTracker;

    monitor-enter v1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "getInstance : sInstance is null?"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 89
    sget-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljp/naver/line/freecoin/sdk/LineTracker;

    invoke-direct {v0}, Ljp/naver/line/freecoin/sdk/LineTracker;-><init>()V

    sput-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    .line 93
    :cond_0
    sget-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 88
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getUndoneTasks(Ljava/util/Queue;)Ljava/util/Queue;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, tasks:Ljava/util/Queue;,"Ljava/util/Queue<Ljava/lang/String;>;"
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    .line 278
    const-string v5, "sdk_pref"

    const/4 v6, 0x0

    .line 277
    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 279
    .local v2, pref:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 281
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 299
    return-object p1

    .line 281
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 282
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 283
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 284
    .local v3, task:Ljava/lang/String;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 287
    :pswitch_0
    invoke-interface {p1, v3}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 288
    invoke-interface {p1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 290
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, " retry "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 293
    :pswitch_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v6, "is aready sent. no need to request"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isOnline()Z
    .locals 4

    .prologue
    .line 459
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    .line 460
    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 459
    check-cast v0, Landroid/net/ConnectivityManager;

    .line 461
    .local v0, cm:Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 462
    .local v1, networkInfo:Landroid/net/NetworkInfo;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-nez v2, :cond_1

    .line 463
    :cond_0
    const/4 v2, 0x0

    .line 466
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private parseConversionResult(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 9
    .parameter "json"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 413
    const/4 v4, 0x0

    .line 415
    .local v4, results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    .end local v4           #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v5, results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 418
    .local v2, jObject:Lorg/json/JSONObject;
    const-string v7, "response"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 419
    .local v3, response:Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 420
    .local v6, status:Ljava/lang/String;
    const-string v7, "action"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 421
    .local v0, action:Ljava/lang/String;
    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "status :"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", action:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", result:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 423
    const-string v8, "result"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 422
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v4, v5

    .line 432
    .end local v0           #action:Ljava/lang/String;
    .end local v2           #jObject:Lorg/json/JSONObject;
    .end local v3           #response:Lorg/json/JSONObject;
    .end local v5           #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v6           #status:Ljava/lang/String;
    .restart local v4       #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object v4

    .line 425
    :catch_0
    move-exception v1

    .line 426
    .local v1, e:Lorg/json/JSONException;
    :goto_1
    const-string v7, "JSONExecption"

    invoke-static {v7}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 427
    sget-boolean v7, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v7, :cond_0

    .line 428
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 425
    .end local v1           #e:Lorg/json/JSONException;
    .end local v4           #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v5       #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v1

    move-object v4, v5

    .end local v5           #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v4       #results:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_1
.end method

.method private requestConversion(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 14
    .parameter "action"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 339
    const/4 v7, 0x0

    .line 341
    .local v7, resultMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 342
    .local v3, jsonStr:Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Ljp/naver/line/freecoin/sdk/LineTracker;->getDefaultHttpClient()Lorg/apache/http/impl/client/DefaultHttpClient;

    move-result-object v0

    .line 344
    .local v0, client:Lorg/apache/http/impl/client/DefaultHttpClient;
    new-instance v2, Lorg/apache/http/client/methods/HttpPost;

    sget-object v10, Ljp/naver/line/freecoin/sdk/Constants;->REQUEST_URL:Ljava/lang/String;

    invoke-direct {v2, v10}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 346
    .local v2, httpPost:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    .local v5, pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "getReferrer():"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljp/naver/line/freecoin/sdk/LineTracker;->getReferrer()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 348
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "digest"

    invoke-virtual {p0}, Ljp/naver/line/freecoin/sdk/LineTracker;->getReferrer()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "action"

    invoke-direct {v10, v11, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 351
    new-instance v10, Lorg/apache/http/message/BasicNameValuePair;

    const-string v11, "sdk_version"

    .line 352
    const-string v12, "1.0.4"

    invoke-direct {v10, v11, v12}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 355
    const-string v10, "LineFreeCoinSDK/%s (Linux; U; Android %s; %s; %s Build/%s)"

    .line 356
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const-string v13, "1.0.4"

    aput-object v13, v11, v12

    const/4 v12, 0x1

    .line 357
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x2

    .line 358
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    .line 359
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v13, v11, v12

    const/4 v12, 0x4

    sget-object v13, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v13, v11, v12

    .line 355
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 360
    .local v9, userAgent:Ljava/lang/String;
    const-string v10, "User-Agent"

    invoke-virtual {v2, v10, v9}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    new-instance v10, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v11, "utf-8"

    invoke-direct {v10, v5, v11}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 363
    invoke-virtual {v0, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    .line 365
    .local v6, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v10

    invoke-interface {v10}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    .line 366
    .local v8, statusCode:I
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "status code:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 367
    const/16 v10, 0xc8

    if-ne v8, v10, :cond_0

    .line 369
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 370
    .local v4, outputStream:Ljava/io/ByteArrayOutputStream;
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v10

    invoke-interface {v10, v4}, Lorg/apache/http/HttpEntity;->writeTo(Ljava/io/OutputStream;)V

    .line 371
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v3

    .line 372
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 374
    if-eqz v3, :cond_0

    .line 375
    invoke-direct {p0, v3}, Ljp/naver/line/freecoin/sdk/LineTracker;->parseConversionResult(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v7

    .line 379
    .end local v4           #outputStream:Ljava/io/ByteArrayOutputStream;
    :cond_0
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "json:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 408
    .end local v0           #client:Lorg/apache/http/impl/client/DefaultHttpClient;
    .end local v2           #httpPost:Lorg/apache/http/client/methods/HttpPost;
    .end local v5           #pairs:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v6           #response:Lorg/apache/http/HttpResponse;
    .end local v8           #statusCode:I
    .end local v9           #userAgent:Ljava/lang/String;
    :cond_1
    :goto_0
    return-object v7

    .line 380
    :catch_0
    move-exception v1

    .line 381
    .local v1, e:Ljava/io/UnsupportedEncodingException;
    const-string v10, "UnsupportedEncodingException"

    invoke-static {v10}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 382
    sget-boolean v10, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v10, :cond_1

    .line 383
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    .line 386
    .end local v1           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 387
    .local v1, e:Lorg/apache/http/client/ClientProtocolException;
    const-string v10, "ClientProtocolException"

    invoke-static {v10}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 388
    sget-boolean v10, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v10, :cond_1

    .line 389
    invoke-virtual {v1}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 392
    .end local v1           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_2
    move-exception v1

    .line 393
    .local v1, e:Ljava/io/IOException;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "IOExceptoin:"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 394
    sget-boolean v10, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v10, :cond_1

    .line 395
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 399
    .end local v1           #e:Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 400
    .local v1, e:Ljava/lang/RuntimeException;
    sget-boolean v10, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v10, :cond_1

    .line 401
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 402
    throw v1
.end method

.method private saveStatus(Ljava/lang/String;I)V
    .locals 5
    .parameter "action"
    .parameter "status"

    .prologue
    .line 309
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "saveStatus(action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", status="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 312
    :try_start_0
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    .line 313
    const-string v3, "sdk_pref"

    const/4 v4, 0x0

    .line 312
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 314
    .local v1, pref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 315
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 316
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 321
    return-void

    .line 318
    .end local v0           #edit:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    .line 319
    iget-object v3, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 320
    throw v2
.end method

.method private declared-synchronized sendEvent(Ljava/lang/String;)V
    .locals 5
    .parameter "action"

    .prologue
    .line 226
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 227
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 228
    const-string v3, "You must call LineTracker.startTracker(Context context) before sending event."

    .line 227
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 231
    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendEvent: action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 233
    iget-boolean v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z

    if-eqz v2, :cond_2

    .line 234
    const-string v2, "sendEvent: isCancelled"

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 238
    :cond_2
    :try_start_2
    invoke-virtual {p0, p1}, Ljp/naver/line/freecoin/sdk/LineTracker;->getStatus(Ljava/lang/String;)I

    move-result v1

    .line 239
    .local v1, status:I
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sendEvent: status="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 241
    if-gez v1, :cond_1

    .line 245
    invoke-direct {p0, p1}, Ljp/naver/line/freecoin/sdk/LineTracker;->addTaskToQueue(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 247
    :try_start_3
    invoke-direct {p0}, Ljp/naver/line/freecoin/sdk/LineTracker;->isOnline()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 248
    const-string v2, "sendEvent: online"

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 249
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    if-eqz v2, :cond_3

    .line 250
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v2

    sget-object v3, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v2, v3, :cond_1

    .line 251
    :cond_3
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;-><init>(Ljp/naver/line/freecoin/sdk/LineTracker;Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    .line 252
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 258
    :catch_0
    move-exception v0

    .line 259
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_4
    sget-boolean v2, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v2, :cond_1

    .line 260
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 261
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 256
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_4
    :try_start_5
    const-string v2, "Event Not Sent. offline"

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method

.method private sendUndoneTasks()V
    .locals 4

    .prologue
    .line 111
    invoke-virtual {p0}, Ljp/naver/line/freecoin/sdk/LineTracker;->getReferrer()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    .line 112
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->referrerLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 117
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    const-string v2, "no_referrer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z

    .line 120
    const-string v1, "Event not sent.Free coin referrer was not found."

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    invoke-direct {p0, v1}, Ljp/naver/line/freecoin/sdk/LineTracker;->getUndoneTasks(Ljava/util/Queue;)Ljava/util/Queue;

    .line 128
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mTask size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Ljp/naver/line/freecoin/sdk/LineTracker;->isOnline()Z

    move-result v1

    if-nez v1, :cond_2

    .line 130
    const-string v1, "Event not Sent. Offline"

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, e:Ljava/lang/RuntimeException;
    sget-boolean v1, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 146
    throw v0

    .line 133
    .end local v0           #e:Ljava/lang/RuntimeException;
    :cond_2
    :try_start_1
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mTasks:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 135
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    if-eqz v1, :cond_3

    .line 136
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v1

    sget-object v2, Ljava/lang/Thread$State;->TERMINATED:Ljava/lang/Thread$State;

    if-ne v1, v2, :cond_0

    .line 137
    :cond_3
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;-><init>(Ljp/naver/line/freecoin/sdk/LineTracker;Ljp/naver/line/freecoin/sdk/LineTracker$ConversionTask;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    .line 138
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static setDebug(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 304
    sput-boolean p0, Ljp/naver/line/freecoin/sdk/LineTracker;->isDebug:Z

    .line 306
    return-void
.end method

.method public static showLog(Z)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 157
    invoke-static {p0}, Ljp/naver/line/freecoin/sdk/CLog;->showLog(Z)V

    .line 158
    return-void
.end method

.method public static startTracker(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 97
    const-string v0, "Line Free Coin Tracker has been started."

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->ld(Ljava/lang/String;)V

    .line 99
    if-nez p0, :cond_0

    .line 100
    const-string v0, "startTracker(Context context): Illegal Argument. context can not be null"

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->le(Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->getInstance()Ljp/naver/line/freecoin/sdk/LineTracker;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, v0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    .line 103
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->getInstance()Ljp/naver/line/freecoin/sdk/LineTracker;

    move-result-object v0

    iput v2, v0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRetryCount:I

    .line 104
    invoke-static {}, Ljp/naver/line/freecoin/sdk/LineTracker;->getInstance()Ljp/naver/line/freecoin/sdk/LineTracker;

    move-result-object v0

    iput-boolean v2, v0, Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z

    .line 105
    sget-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    invoke-direct {v0}, Ljp/naver/line/freecoin/sdk/LineTracker;->sendUndoneTasks()V

    .line 107
    return-void
.end method

.method public static stopTracker()V
    .locals 2

    .prologue
    .line 162
    const-string v0, "stopTracker"

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 163
    sget-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ljp/naver/line/freecoin/sdk/LineTracker;->isCancelled:Z

    .line 164
    const/4 v0, 0x0

    sput-object v0, Ljp/naver/line/freecoin/sdk/LineTracker;->sInstance:Ljp/naver/line/freecoin/sdk/LineTracker;

    .line 165
    return-void
.end method


# virtual methods
.method public getReferrer()Ljava/lang/String;
    .locals 4

    .prologue
    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getReferrer is called:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 187
    :try_start_0
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    .line 188
    const-string v2, "referrer_pref"

    const/4 v3, 0x0

    .line 187
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 190
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "referrer"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getReferrer:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 196
    iget-object v1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    return-object v1

    .line 192
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v1

    .line 193
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 195
    throw v1
.end method

.method public getStatus(Ljava/lang/String;)I
    .locals 5
    .parameter "action"

    .prologue
    .line 324
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStatus(action="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 325
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 326
    const/4 v1, 0x0

    .line 328
    .local v1, status:I
    :try_start_0
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mContext:Landroid/content/Context;

    .line 329
    const-string v3, "sdk_pref"

    const/4 v4, 0x0

    .line 328
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 330
    .local v0, pref:Landroid/content/SharedPreferences;
    const/4 v2, -0x1

    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 333
    iget-object v2, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 335
    return v1

    .line 332
    .end local v0           #pref:Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    .line 333
    iget-object v3, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mStatusLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 334
    throw v2
.end method

.method public sendActionEvent(Ljava/lang/String;)V
    .locals 2
    .parameter "action"

    .prologue
    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendActionEvent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 177
    invoke-direct {p0, p1}, Ljp/naver/line/freecoin/sdk/LineTracker;->sendEvent(Ljava/lang/String;)V

    .line 179
    return-void
.end method

.method public sendInstallEvent()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "sendInstallEvent"

    invoke-static {v0}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 170
    const-string v0, "install"

    invoke-direct {p0, v0}, Ljp/naver/line/freecoin/sdk/LineTracker;->sendEvent(Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public setReferrer(Ljava/lang/String;Landroid/content/Context;)V
    .locals 5
    .parameter "referrer"
    .parameter "context"

    .prologue
    .line 201
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setReferrer is called:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 203
    iget-object v3, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 206
    :try_start_0
    iput-object p1, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mReferrer:Ljava/lang/String;

    .line 208
    const-string v3, "referrer_pref"

    const/4 v4, 0x0

    .line 207
    invoke-virtual {p2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 210
    .local v1, pref:Landroid/content/SharedPreferences;
    const-string v3, "referrer"

    const/4 v4, 0x0

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 211
    .local v2, ref:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "setReferrer: ref="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 213
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 214
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "referrer"

    invoke-interface {v0, v3, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 215
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 217
    iget-object v3, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->referrerLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 220
    iget-object v3, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "referrer is saved to Pref:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljp/naver/line/freecoin/sdk/CLog;->d(Ljava/lang/String;)V

    .line 223
    return-void

    .line 219
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #pref:Landroid/content/SharedPreferences;
    .end local v2           #ref:Ljava/lang/String;
    :catchall_0
    move-exception v3

    .line 220
    iget-object v4, p0, Ljp/naver/line/freecoin/sdk/LineTracker;->mRefLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v4}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 221
    throw v3
.end method
