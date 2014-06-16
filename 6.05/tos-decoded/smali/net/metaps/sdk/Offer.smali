.class public Lnet/metaps/sdk/Offer;
.super Ljava/lang/Object;
.source "Offer.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "WorldWriteableFiles",
        "WorldReadableFiles",
        "WorldWriteableFiles"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/metaps/sdk/Offer;",
        ">;"
    }
.end annotation


# static fields
.field public static final NOCHANGE_STATUS_WAIT_COUNT:I = 0x3

.field public static final NOCHANGE_STATUS_WAIT_MINITUS:J = 0x2L

.field public static final STATUS_ALL_PASSED:I = 0x65

.field public static final STATUS_BEFORE_APROVAL_BY_ADVERTISER:I = 0x16

.field public static final STATUS_BEFORE_CONFIRMATION_ON_DEVICE:I = 0x15

.field public static final STATUS_BEFORE_INSTALLING:I = 0xb

.field public static final STATUS_BEFORE_INSTALLING_RETRY:I = 0xc

.field public static final STATUS_BEFORE_LOGGING:I = 0x0

.field public static final STATUS_BEFORE_RETRIEVE:I = 0x1f

.field public static final STATUS_BEFORE_RETRIEVE_WITH_EXCEPTION:I = 0x20

.field public static final STATUS_CODE_ERROR_INSTALLED_BY_ANOTHER_APP:Ljava/lang/String; = "e012-01-007"

.field public static final STATUS_CODE_INSTALLED_IN_THIS_MEDIA:Ljava/lang/String; = "e012-01-006"

.field public static final STATUS_ERROR_INSTALLED_BY_ANOTHER_APP:I = 0xc9

.field public static final STATUS_ERROR_INSTALLED_DUPLICATED:I = 0xca

.field protected static final a:Ljava/lang/String; = "_Notify"

.field protected static final b:Ljava/lang/String; = "installed_app_list"

.field private static r:Ljava/lang/Object;


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:I

.field private o:I

.field private p:I

.field private q:Ljava/lang/String;

.field private s:J

.field private t:I

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 259
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lnet/metaps/sdk/Offer;->r:Ljava/lang/Object;

    .line 31
    return-void
.end method

.method protected constructor <init>(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "campaign"
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lnet/metaps/sdk/Offer;->g:I

    .line 219
    const-string v0, "0"

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->m:J

    .line 251
    iput v2, p0, Lnet/metaps/sdk/Offer;->n:I

    .line 253
    iput v2, p0, Lnet/metaps/sdk/Offer;->o:I

    .line 255
    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    .line 269
    iput v2, p0, Lnet/metaps/sdk/Offer;->t:I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/metaps/sdk/Offer;->u:Z

    .line 274
    iput-boolean v2, p0, Lnet/metaps/sdk/Offer;->v:Z

    .line 276
    iput-boolean v2, p0, Lnet/metaps/sdk/Offer;->w:Z

    .line 942
    iput v2, p0, Lnet/metaps/sdk/Offer;->x:I

    .line 286
    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->o()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->F()I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->g:I

    .line 293
    iput-object p2, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;

    .line 294
    invoke-virtual {p1}, Lnet/metaps/sdk/c;->A()I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->o:I

    .line 295
    iput-object p3, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    .line 296
    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 297
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->l:J

    .line 298
    return-void
.end method

.method protected constructor <init>(Lorg/json/JSONObject;)V
    .locals 3
    .parameter "json"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    const/4 v0, -0x1

    iput v0, p0, Lnet/metaps/sdk/Offer;->g:I

    .line 219
    const-string v0, "0"

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    .line 224
    iput-object v1, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;

    .line 229
    iput-object v1, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    .line 245
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->m:J

    .line 251
    iput v2, p0, Lnet/metaps/sdk/Offer;->n:I

    .line 253
    iput v2, p0, Lnet/metaps/sdk/Offer;->o:I

    .line 255
    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    .line 269
    iput v2, p0, Lnet/metaps/sdk/Offer;->t:I

    .line 271
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/metaps/sdk/Offer;->u:Z

    .line 274
    iput-boolean v2, p0, Lnet/metaps/sdk/Offer;->v:Z

    .line 276
    iput-boolean v2, p0, Lnet/metaps/sdk/Offer;->w:Z

    .line 942
    iput v2, p0, Lnet/metaps/sdk/Offer;->x:I

    .line 307
    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1}, Lnet/metaps/sdk/Offer;->a(Lorg/json/JSONObject;)V

    .line 309
    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/Offer;)I
    .locals 1
    .parameter

    .prologue
    .line 253
    iget v0, p0, Lnet/metaps/sdk/Offer;->o:I

    return v0
.end method

.method static synthetic a(Lnet/metaps/sdk/Offer;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 255
    iput p1, p0, Lnet/metaps/sdk/Offer;->p:I

    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/Offer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1082
    invoke-direct {p0, p1, p2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lnet/metaps/sdk/Offer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    iput-boolean p1, p0, Lnet/metaps/sdk/Offer;->v:Z

    return-void
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WorldReadableFiles"
        }
    .end annotation

    .prologue
    .line 1029
    sget-object v1, Lnet/metaps/sdk/Offer;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 1030
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Offer;->o()Ljava/util/List;

    move-result-object v0

    .line 1031
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 1033
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1034
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 1035
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1040
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1041
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1042
    const-string v3, "installed_app_list"

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1043
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1029
    monitor-exit v1

    .line 1045
    return-void

    .line 1036
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 1037
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getCampaignId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget-wide v5, v0, Lnet/metaps/sdk/Offer;->l:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 1029
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic b(Lnet/metaps/sdk/Offer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 271
    iput-boolean p1, p0, Lnet/metaps/sdk/Offer;->u:Z

    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1083
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "Offer."

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1084
    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, "app=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "],campaign=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1085
    iget-object v2, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "],cuid=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "],rewardUser=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lnet/metaps/sdk/Offer;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1086
    const-string v2, "],scenario=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1087
    const-string v2, "] status=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lnet/metaps/sdk/Offer;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1088
    const-string v2, "] package=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1089
    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    .line 1090
    const-string v2, "_Notify"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    return-void
.end method

.method static synthetic c(Lnet/metaps/sdk/Offer;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 276
    iput-boolean p1, p0, Lnet/metaps/sdk/Offer;->w:Z

    return-void
.end method

.method private e(I)J
    .locals 6
    .parameter

    .prologue
    const-wide/16 v3, 0x2

    const/4 v0, 0x6

    .line 1146
    .line 1147
    if-le p1, v0, :cond_0

    move p1, v0

    .line 1150
    :cond_0
    const/4 v0, 0x0

    move-wide v1, v3

    :goto_0
    add-int/lit8 v5, p1, -0x1

    if-lt v0, v5, :cond_1

    .line 1153
    return-wide v1

    .line 1151
    :cond_1
    mul-long/2addr v1, v3

    .line 1150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static g(Ljava/lang/String;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 974
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    .line 986
    :goto_0
    return v0

    .line 977
    :cond_1
    sget-object v2, Lnet/metaps/sdk/Offer;->r:Ljava/lang/Object;

    monitor-enter v2

    .line 978
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Offer;->o()Ljava/util/List;

    move-result-object v0

    .line 979
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 980
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 986
    monitor-exit v2

    move v0, v1

    goto :goto_0

    .line 981
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/metaps/sdk/Offer;

    .line 982
    invoke-virtual {v0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 983
    monitor-exit v2

    const/4 v0, 0x1

    goto :goto_0

    .line 977
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static o()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/metaps/sdk/Offer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v14, 0x2

    const/4 v0, 0x0

    .line 994
    sget-object v1, Lnet/metaps/sdk/Offer;->r:Ljava/lang/Object;

    monitor-enter v1

    .line 995
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 996
    invoke-static {}, Lnet/metaps/sdk/Const;->c()Landroid/content/SharedPreferences;

    move-result-object v3

    .line 997
    const-string v4, "installed_app_list"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 998
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 999
    array-length v4, v3

    :goto_0
    if-lt v0, v4, :cond_0

    .line 1020
    monitor-exit v1

    return-object v2

    .line 999
    :cond_0
    aget-object v5, v3, v0

    .line 1000
    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1001
    array-length v6, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v6, v14, :cond_1

    .line 1003
    const/4 v6, 0x0

    :try_start_1
    aget-object v6, v5, v6

    .line 1004
    const/4 v7, 0x1

    aget-object v7, v5, v7

    .line 1005
    const/4 v8, 0x2

    aget-object v5, v5, v8

    .line 1006
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 1007
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v8

    const-string v5, "sendNotifyTimeLimit"

    invoke-static {v5}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v12

    cmp-long v5, v10, v12

    if-gtz v5, :cond_1

    .line 1008
    new-instance v5, Lnet/metaps/sdk/c;

    invoke-direct {v5}, Lnet/metaps/sdk/c;-><init>()V

    .line 1009
    invoke-virtual {v5, v6}, Lnet/metaps/sdk/c;->a(Ljava/lang/String;)V

    .line 1010
    invoke-virtual {v5, v7}, Lnet/metaps/sdk/c;->b(Ljava/lang/String;)V

    .line 1011
    new-instance v6, Lnet/metaps/sdk/Offer;

    const-string v7, ""

    const-string v10, ""

    invoke-direct {v6, v5, v7, v10}, Lnet/metaps/sdk/Offer;-><init>(Lnet/metaps/sdk/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    iput-wide v8, v6, Lnet/metaps/sdk/Offer;->l:J

    .line 1013
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 999
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 1015
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private p()Z
    .locals 5

    .prologue
    .line 1051
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    .line 1052
    :goto_0
    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v1, ""

    .line 1053
    :goto_1
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1054
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1055
    :cond_0
    const-string v2, "isTapOnThisApp"

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "OK Source app=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1056
    const-string v3, "] This app=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1055
    invoke-direct {p0, v2, v0}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    const/4 v0, 0x1

    .line 1061
    :goto_2
    return v0

    .line 1051
    :cond_1
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    goto :goto_0

    .line 1052
    :cond_2
    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1059
    :cond_3
    const-string v2, "isTapOnThisApp"

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "NG Source app=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1060
    const-string v3, "] This app=["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-direct {p0, v2, v0}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    const/4 v0, 0x0

    goto :goto_2
.end method

.method private q()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/NameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1069
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1070
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "cuid"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1071
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "scn"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "aid"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1073
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "campaign"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v2, "packageName"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1075
    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 1

    .prologue
    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 315
    return-void
.end method

.method protected a(I)V
    .locals 0
    .parameter

    .prologue
    .line 438
    iput p1, p0, Lnet/metaps/sdk/Offer;->g:I

    .line 439
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    .line 330
    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1098
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "last_status=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lnet/metaps/sdk/Offer;->p:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1099
    const-string v1, "] last_response=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1100
    const-string v1, "] tag=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 1101
    const-string v1, "] message=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1098
    invoke-direct {p0, p1, v0}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    :try_start_0
    const-string v0, "reportError"

    invoke-static {v0}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1104
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->q()Ljava/util/List;

    move-result-object v1

    .line 1105
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "last_status"

    iget v4, p0, Lnet/metaps/sdk/Offer;->p:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1106
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "last_response"

    iget-object v4, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1107
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "tag"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1108
    new-instance v2, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "message"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    new-instance v2, Lnet/metaps/sdk/a;

    invoke-direct {v2}, Lnet/metaps/sdk/a;-><init>()V

    .line 1110
    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v1, v3, v4}, Lnet/metaps/sdk/a;->a(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1114
    :goto_0
    return-void

    .line 1112
    :catch_0
    move-exception v0

    goto :goto_0

    .line 1111
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 535
    const-string v0, "appId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    .line 537
    :try_start_0
    const-string v0, "campaign"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 541
    :goto_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    .line 542
    const-string v0, "scenario"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    .line 543
    const-string v0, "createTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->l:J

    .line 545
    :try_start_1
    const-string v0, "noChangeStatusCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->t:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 550
    :goto_1
    :try_start_2
    const-string v0, "waitTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->s:J
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 555
    :goto_2
    :try_start_3
    const-string v0, "appName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 560
    :goto_3
    :try_start_4
    const-string v0, "endUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_c

    .line 564
    :goto_4
    :try_start_5
    const-string v0, "rewardEndUser"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->o:I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    .line 569
    :goto_5
    :try_start_6
    const-string v0, "orderNumber"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->x:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 575
    :goto_6
    :try_start_7
    const-string v0, "sdkFlag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->g:I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6

    .line 580
    :goto_7
    :try_start_8
    const-string v0, "installConfirmationTime"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->m:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7

    .line 585
    :goto_8
    :try_start_9
    const-string v0, "sourceAppId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_8

    .line 590
    :goto_9
    :try_start_a
    const-string v0, "offerStatus"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_9

    .line 595
    :goto_a
    :try_start_b
    const-string v0, "lastResponse"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_a

    .line 600
    :goto_b
    :try_start_c
    const-string v0, "rewardDeveloper"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->n:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_b

    .line 604
    :goto_c
    return-void

    .line 538
    :catch_0
    move-exception v0

    .line 539
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    goto :goto_0

    .line 546
    :catch_1
    move-exception v0

    .line 547
    iput v2, p0, Lnet/metaps/sdk/Offer;->t:I

    goto :goto_1

    .line 551
    :catch_2
    move-exception v0

    .line 552
    iput-wide v3, p0, Lnet/metaps/sdk/Offer;->s:J

    goto :goto_2

    .line 556
    :catch_3
    move-exception v0

    .line 557
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    goto :goto_3

    .line 565
    :catch_4
    move-exception v0

    .line 566
    const-string v0, "currencyAmount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lnet/metaps/sdk/Offer;->o:I

    goto :goto_5

    .line 570
    :catch_5
    move-exception v0

    .line 572
    iput v2, p0, Lnet/metaps/sdk/Offer;->x:I

    goto :goto_6

    .line 576
    :catch_6
    move-exception v0

    .line 577
    iput v2, p0, Lnet/metaps/sdk/Offer;->g:I

    goto :goto_7

    .line 581
    :catch_7
    move-exception v0

    .line 582
    iput-wide v3, p0, Lnet/metaps/sdk/Offer;->m:J

    goto :goto_8

    .line 586
    :catch_8
    move-exception v0

    .line 587
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    goto :goto_9

    .line 591
    :catch_9
    move-exception v0

    .line 592
    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    goto :goto_a

    .line 596
    :catch_a
    move-exception v0

    .line 597
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    goto :goto_b

    .line 601
    :catch_b
    move-exception v0

    .line 602
    iput v2, p0, Lnet/metaps/sdk/Offer;->n:I

    goto :goto_c

    .line 561
    :catch_c
    move-exception v0

    goto/16 :goto_4
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    return-object v0
.end method

.method protected b(I)V
    .locals 0
    .parameter

    .prologue
    .line 485
    iput p1, p0, Lnet/metaps/sdk/Offer;->n:I

    .line 486
    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    .line 346
    return-void
.end method

.method protected c()J
    .locals 2

    .prologue
    .line 405
    iget-wide v0, p0, Lnet/metaps/sdk/Offer;->l:J

    return-wide v0
.end method

.method protected c(I)V
    .locals 0
    .parameter

    .prologue
    .line 501
    iput p1, p0, Lnet/metaps/sdk/Offer;->o:I

    .line 502
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 368
    iput-object p1, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    .line 369
    return-void
.end method

.method public checkStatus()V
    .locals 6

    .prologue
    .line 1119
    const-string v0, "_Notify"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Retry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lnet/metaps/sdk/Offer;->t:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget-boolean v0, p0, Lnet/metaps/sdk/Offer;->u:Z

    if-eqz v0, :cond_0

    .line 1121
    const/4 v0, 0x0

    iput v0, p0, Lnet/metaps/sdk/Offer;->t:I

    .line 1127
    :goto_0
    return-void

    .line 1123
    :cond_0
    iget v0, p0, Lnet/metaps/sdk/Offer;->t:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/metaps/sdk/Offer;->t:I

    .line 1124
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    iget v4, p0, Lnet/metaps/sdk/Offer;->t:I

    invoke-direct {p0, v4}, Lnet/metaps/sdk/Offer;->e(I)J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lnet/metaps/sdk/Offer;->s:J

    .line 1125
    const-string v0, "_Notify"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Extended time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lnet/metaps/sdk/Offer;->t:I

    invoke-direct {p0, v2}, Lnet/metaps/sdk/Offer;->e(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " minutes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, Lnet/metaps/sdk/Offer;

    invoke-virtual {p0, p1}, Lnet/metaps/sdk/Offer;->compareTo(Lnet/metaps/sdk/Offer;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/metaps/sdk/Offer;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 963
    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->n()I

    move-result v0

    invoke-virtual {p1}, Lnet/metaps/sdk/Offer;->n()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method protected d()J
    .locals 2

    .prologue
    .line 412
    iget-wide v0, p0, Lnet/metaps/sdk/Offer;->s:J

    return-wide v0
.end method

.method protected d(I)V
    .locals 0
    .parameter

    .prologue
    .line 955
    iput p1, p0, Lnet/metaps/sdk/Offer;->x:I

    .line 956
    return-void
.end method

.method protected d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 383
    iput-object p1, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    .line 384
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 398
    iput-object p1, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    .line 399
    return-void
.end method

.method protected e()Z
    .locals 4

    .prologue
    .line 419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 420
    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->c()J

    move-result-wide v2

    .line 421
    sub-long/2addr v0, v2

    const-string v2, "sendNotifyTimeLimit"

    invoke-static {v2}, Lnet/metaps/sdk/H;->c(Ljava/lang/String;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 422
    const/4 v0, 0x1

    .line 424
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected f()I
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lnet/metaps/sdk/Offer;->g:I

    return v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 452
    iput-object p1, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    .line 453
    return-void
.end method

.method protected g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 322
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getCampaignId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getRewardForMedia()I
    .locals 1

    .prologue
    .line 476
    iget v0, p0, Lnet/metaps/sdk/Offer;->n:I

    return v0
.end method

.method public getRewardForUser()I
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Lnet/metaps/sdk/Offer;->o:I

    return v0
.end method

.method public getScenario()Ljava/lang/String;
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 460
    iget v0, p0, Lnet/metaps/sdk/Offer;->p:I

    return v0
.end method

.method protected h()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 509
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 510
    const-string v1, "appId"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 511
    const-string v1, "campaign"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v1, "appName"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 513
    const-string v1, "packageName"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
    const-string v1, "endUserId"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 515
    const-string v1, "scenario"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 516
    const-string v1, "createTime"

    iget-wide v2, p0, Lnet/metaps/sdk/Offer;->l:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 517
    const-string v1, "waitTime"

    iget-wide v2, p0, Lnet/metaps/sdk/Offer;->s:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 518
    const-string v1, "rewardEndUser"

    iget v2, p0, Lnet/metaps/sdk/Offer;->o:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 519
    const-string v1, "orderNumber"

    iget v2, p0, Lnet/metaps/sdk/Offer;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 520
    const-string v1, "sdkFlag"

    iget v2, p0, Lnet/metaps/sdk/Offer;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 521
    const-string v1, "installConfirmationTime"

    iget-wide v2, p0, Lnet/metaps/sdk/Offer;->m:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 522
    const-string v1, "sourceAppId"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 523
    const-string v1, "offerStatus"

    iget v2, p0, Lnet/metaps/sdk/Offer;->p:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 524
    const-string v1, "noChangeStatusCount"

    iget v2, p0, Lnet/metaps/sdk/Offer;->t:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 525
    const-string v1, "lastResponse"

    iget-object v2, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 526
    const-string v1, "rewardDeveloper"

    iget v2, p0, Lnet/metaps/sdk/Offer;->n:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 527
    return-object v0
.end method

.method protected i()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;,
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 610
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->p()Z

    move-result v2

    if-nez v2, :cond_1

    .line 645
    :cond_0
    :goto_0
    return v0

    .line 612
    :cond_1
    iget v2, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eqz v2, :cond_2

    move v0, v1

    .line 613
    goto :goto_0

    .line 615
    :cond_2
    const-string v2, "reportTap"

    invoke-static {v2}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 616
    new-instance v3, Lnet/metaps/sdk/a;

    invoke-direct {v3}, Lnet/metaps/sdk/a;-><init>()V

    .line 617
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->q()Ljava/util/List;

    move-result-object v4

    .line 619
    const/4 v5, 0x1

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v3, v2, v4, v5, v6}, Lnet/metaps/sdk/a;->a(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 620
    const-string v3, "doTap"

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "response=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    if-eqz v2, :cond_0

    .line 622
    const-string v3, "OK"

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 623
    iget v2, p0, Lnet/metaps/sdk/Offer;->g:I

    if-ne v2, v1, :cond_3

    .line 625
    const/16 v2, 0x16

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 630
    :goto_1
    const-string v2, ""

    iput-object v2, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    move v0, v1

    .line 631
    goto :goto_0

    .line 628
    :cond_3
    const/16 v2, 0xb

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_1

    .line 636
    :catch_0
    move-exception v0

    .line 637
    throw v0

    .line 633
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 638
    :catch_1
    move-exception v0

    .line 639
    throw v0

    .line 640
    :catch_2
    move-exception v1

    .line 641
    iput-boolean v0, p0, Lnet/metaps/sdk/Offer;->u:Z

    .line 642
    const-string v0, "doTap"

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "Exception=["

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    throw v1
.end method

.method public isSendOfferStatus()Z
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1133
    const-string v3, "_Notify"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Time   : "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lnet/metaps/sdk/Offer;->s:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gtz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1134
    const-string v0, "_Notify"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Time   : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lnet/metaps/sdk/Offer;->e:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/metaps/sdk/Offer;->p:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lnet/metaps/sdk/Offer;->s:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1135
    iget-wide v3, p0, Lnet/metaps/sdk/Offer;->s:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-gtz v0, :cond_1

    .line 1138
    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 1133
    goto :goto_0

    :cond_1
    move v1, v2

    .line 1138
    goto :goto_1
.end method

.method protected j()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    const/16 v7, 0xc

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 652
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->p()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 754
    :goto_0
    return v0

    .line 654
    :cond_0
    const/16 v0, 0xb

    iget v3, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eq v0, v3, :cond_1

    .line 655
    iget v0, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eq v7, v0, :cond_1

    .line 656
    const-string v0, "doNotify"

    const-string v1, "Return false with invalid process call. retry later."

    invoke-direct {p0, v0, v1}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    .line 657
    goto :goto_0

    .line 660
    :cond_1
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->k:Ljava/lang/String;

    invoke-static {v0}, Lnet/metaps/sdk/Factory;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 661
    const-string v0, "doNotify"

    const-string v2, "Return false with this package is not installed."

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 662
    goto :goto_0

    .line 665
    :cond_2
    iget-wide v3, p0, Lnet/metaps/sdk/Offer;->m:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_3

    .line 666
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/metaps/sdk/Offer;->m:J

    .line 671
    :cond_3
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "0"

    .line 672
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u5186"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "$"

    const-string v4, ""

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 673
    if-eqz v0, :cond_4

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 674
    const-string v0, "free"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\u7121\u6599"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 675
    const-string v0, "0"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "\uff10"

    iget-object v3, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_4
    move v0, v2

    .line 678
    :goto_2
    if-nez v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lnet/metaps/sdk/Offer;->m:J

    sub-long/2addr v3, v5

    const-wide/32 v5, 0xdbba0

    cmp-long v0, v3, v5

    if-gez v0, :cond_6

    .line 680
    const-string v0, "doNotify"

    const-string v2, "Not free and wait 15min."

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 681
    goto/16 :goto_0

    .line 671
    :cond_5
    iget-object v0, p0, Lnet/metaps/sdk/Offer;->h:Ljava/lang/String;

    goto :goto_1

    .line 684
    :cond_6
    new-instance v0, Lnet/metaps/sdk/a;

    invoke-direct {v0}, Lnet/metaps/sdk/a;-><init>()V

    .line 685
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->q()Ljava/util/List;

    move-result-object v3

    .line 687
    :try_start_0
    const-string v4, "reportInstall"

    invoke-static {v4}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 688
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v4, v3, v5, v6}, Lnet/metaps/sdk/a;->a(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 689
    const-string v3, "doNotify"

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "response=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    if-nez v0, :cond_7

    .line 691
    const/16 v0, 0xc

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    :goto_3
    move v0, v1

    .line 754
    goto/16 :goto_0

    .line 693
    :cond_7
    const-string v3, "OK"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 695
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/metaps/sdk/Offer;->l:J

    .line 696
    iget v0, p0, Lnet/metaps/sdk/Offer;->g:I

    if-nez v0, :cond_8

    .line 697
    const/16 v0, 0x15

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 701
    :goto_4
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    move v0, v2

    .line 702
    goto/16 :goto_0

    .line 699
    :cond_8
    const/16 v0, 0x16

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_4

    .line 744
    :catch_0
    move-exception v0

    .line 745
    throw v0

    .line 703
    :cond_9
    :try_start_1
    const-string v3, "e012-01-006"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 705
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lnet/metaps/sdk/Offer;->l:J

    .line 706
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 708
    iget v0, p0, Lnet/metaps/sdk/Offer;->g:I

    if-nez v0, :cond_a

    .line 709
    const/16 v0, 0x15

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 725
    :goto_5
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    move v0, v2

    .line 726
    goto/16 :goto_0

    .line 711
    :cond_a
    const/16 v0, 0x16

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_5

    .line 746
    :catch_1
    move-exception v0

    .line 747
    throw v0

    .line 715
    :cond_b
    :try_start_2
    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/Offer;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 716
    const/16 v0, 0xca

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    .line 748
    :catch_2
    move-exception v0

    .line 749
    iput-boolean v1, p0, Lnet/metaps/sdk/Offer;->u:Z

    .line 751
    iput v7, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 752
    const-string v2, "doNotify"

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

    invoke-direct {p0, v2, v0}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 718
    :cond_c
    :try_start_3
    iget v0, p0, Lnet/metaps/sdk/Offer;->g:I

    if-nez v0, :cond_d

    .line 719
    const/16 v0, 0x15

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    goto :goto_5

    .line 721
    :cond_d
    const/16 v0, 0x16

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    goto :goto_5

    .line 727
    :cond_e
    const-string v2, "e012-01-007"

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 728
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 730
    iget v2, p0, Lnet/metaps/sdk/Offer;->g:I

    if-nez v2, :cond_f

    .line 731
    const/16 v2, 0x15

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 739
    :goto_6
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    goto/16 :goto_3

    .line 733
    :cond_f
    const/16 v2, 0x16

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    goto :goto_6

    .line 737
    :cond_10
    const/16 v2, 0xc9

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    goto :goto_6

    .line 741
    :cond_11
    const/16 v2, 0xc

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 742
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_3

    :cond_12
    move v0, v1

    goto/16 :goto_2
.end method

.method protected k()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/conn/ConnectTimeoutException;
        }
    .end annotation

    .prologue
    const/16 v3, 0xc9

    const/4 v8, 0x2

    const/16 v4, 0x1f

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 761
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->p()Z

    move-result v2

    if-nez v2, :cond_0

    .line 762
    iput v3, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 763
    const-string v1, "doConfirm"

    const-string v2, "Return false with installed by another media app."

    invoke-direct {p0, v1, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :goto_0
    return v0

    .line 765
    :cond_0
    const/16 v2, 0x15

    iget v3, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eq v2, v3, :cond_1

    .line 766
    const/16 v2, 0x16

    iget v3, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eq v2, v3, :cond_1

    .line 767
    const-string v1, "doConfirm"

    const-string v2, "Return false with invalid process call. retry later."

    invoke-direct {p0, v1, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 769
    :cond_1
    invoke-static {}, Lnet/metaps/sdk/Factory;->b()Lnet/metaps/sdk/Receiver;

    move-result-object v2

    if-nez v2, :cond_2

    .line 770
    iput v4, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 771
    const-string v0, "doConfirm"

    const-string v2, "Return true. Receiver is not work because null."

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 772
    goto :goto_0

    .line 773
    :cond_2
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/metaps/sdk/Offer;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 774
    const-string v0, "doConfirm"

    const-string v2, "Return false with already installed."

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    const/16 v0, 0xca

    iput v0, p0, Lnet/metaps/sdk/Offer;->p:I

    move v0, v1

    .line 776
    goto :goto_0

    .line 778
    :cond_3
    new-instance v2, Lnet/metaps/sdk/a;

    invoke-direct {v2}, Lnet/metaps/sdk/a;-><init>()V

    .line 779
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->q()Ljava/util/List;

    move-result-object v3

    .line 781
    :try_start_0
    const-string v4, "getReward"

    invoke-static {v4}, Lnet/metaps/sdk/H;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 782
    const-string v5, "doConfirm"

    new-instance v6, Ljava/lang/StringBuffer;

    const-string v7, "url=["

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v3, v5, v6}, Lnet/metaps/sdk/a;->a(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 784
    const-string v3, "doConfirm"

    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "response=["

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    if-nez v2, :cond_4

    .line 786
    const-string v1, ""

    iput-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;
    :try_end_0
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto/16 :goto_0

    .line 819
    :catch_0
    move-exception v0

    .line 820
    throw v0

    .line 789
    :cond_4
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 790
    array-length v4, v3

    if-le v4, v8, :cond_5

    .line 791
    const/4 v4, 0x0

    aget-object v4, v3, v4

    .line 792
    const/4 v5, 0x1

    aget-object v5, v3, v5

    .line 793
    const/4 v6, 0x2

    aget-object v3, v3, v6

    .line 794
    if-nez v4, :cond_6

    .line 795
    const-string v1, ""

    iput-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    .line 817
    :cond_5
    :goto_1
    const-string v1, "_Notify"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(\uff33\uff25\uff31\u3000): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lnet/metaps/sdk/Offer;->u:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto/16 :goto_0

    .line 821
    :catch_1
    move-exception v0

    .line 822
    throw v0

    .line 796
    :cond_6
    :try_start_2
    const-string v6, "OK"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 797
    :cond_7
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lnet/metaps/sdk/Offer;->n:I

    .line 798
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lnet/metaps/sdk/Offer;->o:I

    .line 799
    const/16 v2, 0x1f

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 800
    const-string v2, ""

    iput-object v2, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    move v0, v1

    .line 801
    goto/16 :goto_0

    .line 802
    :cond_8
    if-eqz v4, :cond_9

    const-string v3, "FN"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 803
    const/16 v2, 0x1f

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 804
    const-string v2, ""

    iput-object v2, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    move v0, v1

    .line 805
    goto/16 :goto_0

    .line 806
    :cond_9
    const-string v1, "e012-01-006"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 807
    const/16 v1, 0xca

    iput v1, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 808
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;
    :try_end_2
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 823
    :catch_2
    move-exception v1

    .line 824
    iput-boolean v0, p0, Lnet/metaps/sdk/Offer;->u:Z

    .line 825
    const-string v2, "doConfirm"

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 809
    :cond_a
    :try_start_3
    const-string v1, "e012-01-007"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 810
    const/16 v1, 0xc9

    iput v1, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 811
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;

    goto/16 :goto_1

    .line 813
    :cond_b
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/metaps/sdk/Offer;->q:Ljava/lang/String;
    :try_end_3
    .catch Lorg/apache/http/conn/ConnectionPoolTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_1
.end method

.method protected l()Z
    .locals 6

    .prologue
    const/16 v5, 0x65

    const/16 v4, 0x20

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 834
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->p()Z

    move-result v2

    if-nez v2, :cond_0

    .line 835
    const/16 v1, 0xc9

    iput v1, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 836
    const-string v1, "doRetrieve"

    const-string v2, "Return false with installed by another media app."

    invoke-direct {p0, v1, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 892
    :goto_0
    return v0

    .line 838
    :cond_0
    const/16 v2, 0x1f

    iget v3, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eq v2, v3, :cond_1

    .line 839
    iget v2, p0, Lnet/metaps/sdk/Offer;->p:I

    if-eq v4, v2, :cond_1

    .line 840
    const-string v1, "doRetrieve"

    const-string v2, "Return false with invalid process call. retry later."

    invoke-direct {p0, v1, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 842
    :cond_1
    invoke-static {}, Lnet/metaps/sdk/Factory;->b()Lnet/metaps/sdk/Receiver;

    move-result-object v2

    if-nez v2, :cond_3

    .line 843
    iput v5, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 844
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 845
    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getCampaignId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lnet/metaps/sdk/Offer;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    const-string v0, "doRetrieve"

    const-string v2, "Install history added to local."

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    :cond_2
    const-string v0, "doRetrieve"

    const-string v2, "Return true. Receiver is not work because null."

    invoke-direct {p0, v0, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 849
    goto :goto_0

    .line 850
    :cond_3
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lnet/metaps/sdk/Offer;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 851
    const/16 v1, 0xca

    iput v1, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 852
    const-string v1, "doRetrieve"

    const-string v2, "Return false with already installed."

    invoke-direct {p0, v1, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 857
    :cond_4
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lnet/metaps/sdk/Offer;->v:Z

    .line 858
    new-instance v2, Lnet/metaps/sdk/C;

    invoke-direct {v2, p0}, Lnet/metaps/sdk/C;-><init>(Lnet/metaps/sdk/Offer;)V

    .line 872
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 873
    :try_start_1
    sget-object v3, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 874
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 872
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 877
    :try_start_2
    iget-boolean v2, p0, Lnet/metaps/sdk/Offer;->v:Z

    if-eqz v2, :cond_6

    .line 878
    const/16 v2, 0x65

    iput v2, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 879
    invoke-static {}, Lnet/metaps/sdk/Const;->b()Z

    move-result v2

    if-nez v2, :cond_5

    .line 880
    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lnet/metaps/sdk/Offer;->getCampaignId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/metaps/sdk/Offer;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v2, "doRetrieve"

    const-string v3, "Add install history."

    invoke-direct {p0, v2, v3}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    :cond_5
    const-string v2, "doRetrieve"

    const-string v3, "All process passed. callback is success."

    invoke-direct {p0, v2, v3}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    move v0, v1

    .line 884
    goto/16 :goto_0

    .line 872
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    .line 887
    :catch_0
    move-exception v1

    .line 888
    iput-boolean v0, p0, Lnet/metaps/sdk/Offer;->u:Z

    .line 889
    iput v4, p0, Lnet/metaps/sdk/Offer;->p:I

    .line 890
    const-string v2, "doRetrieve"

    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "Exception=["

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 886
    :cond_6
    :try_start_5
    const-string v1, "doRetrieve"

    const-string v2, "Fail to callback."

    invoke-direct {p0, v1, v2}, Lnet/metaps/sdk/Offer;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method

.method protected m()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 899
    invoke-direct {p0}, Lnet/metaps/sdk/Offer;->p()Z

    move-result v1

    if-nez v1, :cond_0

    .line 935
    :goto_0
    return v0

    .line 903
    :cond_0
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Factory;->b()Lnet/metaps/sdk/Receiver;

    move-result-object v1

    .line 904
    const/4 v2, 0x0

    iput-boolean v2, p0, Lnet/metaps/sdk/Offer;->w:Z

    .line 905
    if-nez v1, :cond_1

    .line 906
    const/4 v1, 0x1

    iput-boolean v1, p0, Lnet/metaps/sdk/Offer;->w:Z

    .line 907
    const-string v1, "finalizeOnError"

    const-string v2, "End with error, Receiver is not found."

    invoke-virtual {p0, v1, v2}, Lnet/metaps/sdk/Offer;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    :goto_1
    iget-boolean v0, p0, Lnet/metaps/sdk/Offer;->w:Z

    goto :goto_0

    .line 909
    :cond_1
    new-instance v2, Lnet/metaps/sdk/D;

    invoke-direct {v2, p0}, Lnet/metaps/sdk/D;-><init>(Lnet/metaps/sdk/Offer;)V

    .line 921
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 922
    :try_start_1
    sget-object v1, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 923
    invoke-virtual {v2}, Ljava/lang/Object;->wait()V

    .line 921
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 926
    :try_start_2
    iget-boolean v1, p0, Lnet/metaps/sdk/Offer;->w:Z

    if-eqz v1, :cond_2

    .line 927
    const-string v1, "finalizeOnError"

    const-string v2, "End with error, Receiver.finalizeOnError is success."

    invoke-virtual {p0, v1, v2}, Lnet/metaps/sdk/Offer;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 933
    :catch_0
    move-exception v1

    .line 934
    const-string v2, "finalizeOnError"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "End with error, Receiver.finalizeOnError throw exception. retry later. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lnet/metaps/sdk/Offer;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 921
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    .line 929
    :cond_2
    const-string v1, "finalizeOnError"

    const-string v2, "End with error, Receiver.finalizeOnError is failure. retry later."

    invoke-virtual {p0, v1, v2}, Lnet/metaps/sdk/Offer;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1
.end method

.method protected n()I
    .locals 1

    .prologue
    .line 948
    iget v0, p0, Lnet/metaps/sdk/Offer;->x:I

    return v0
.end method
