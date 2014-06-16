.class public final Lnet/metaps/sdk/H;
.super Ljava/lang/Object;
.source "SettingsLoader.java"


# static fields
.field private static final a:I = 0xea60

.field private static final b:I = 0xea60

.field private static final c:I = 0xa

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static m:Ljava/lang/String;

.field private static n:Ljava/util/Date;

.field private static o:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 35
    sput-object v1, Lnet/metaps/sdk/H;->d:Ljava/lang/String;

    .line 36
    sput-object v1, Lnet/metaps/sdk/H;->e:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->f:Ljava/util/Map;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->g:Ljava/util/Map;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->h:Ljava/util/Map;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->i:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->j:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->k:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lnet/metaps/sdk/H;->l:Ljava/util/List;

    .line 44
    sput-object v1, Lnet/metaps/sdk/H;->m:Ljava/lang/String;

    .line 46
    sput-object v1, Lnet/metaps/sdk/H;->n:Ljava/util/Date;

    .line 48
    const-string v0, ""

    sput-object v0, Lnet/metaps/sdk/H;->o:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lnet/metaps/sdk/H;->h()V

    .line 52
    sget-object v0, Lnet/metaps/sdk/H;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-static {}, Lnet/metaps/sdk/H;->h()V

    .line 69
    sget-object v0, Lnet/metaps/sdk/H;->f:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method protected static a(Ljava/util/Date;)V
    .locals 0
    .parameter

    .prologue
    .line 218
    sput-object p0, Lnet/metaps/sdk/H;->n:Ljava/util/Date;

    .line 219
    return-void
.end method

.method private static a(Lorg/json/JSONArray;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 351
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 355
    return-void

    .line 352
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    const-string v2, "SettingsLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 343
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 348
    return-void

    .line 344
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 345
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v2, "SettingsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static b()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {}, Lnet/metaps/sdk/H;->h()V

    .line 57
    sget-object v0, Lnet/metaps/sdk/H;->e:Ljava/lang/String;

    return-object v0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 80
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 86
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->g:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 81
    :catch_0
    move-exception v0

    goto :goto_0

    .line 83
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected static c(Ljava/lang/String;)J
    .locals 2
    .parameter

    .prologue
    .line 96
    .line 98
    :try_start_0
    invoke-static {p0}, Lnet/metaps/sdk/H;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 102
    :goto_0
    return-wide v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method protected static c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 151
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->i:Ljava/util/List;

    return-object v0

    .line 146
    :catch_0
    move-exception v0

    goto :goto_0

    .line 148
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected static d(Ljava/lang/String;)I
    .locals 1
    .parameter

    .prologue
    .line 112
    .line 114
    :try_start_0
    invoke-static {p0}, Lnet/metaps/sdk/H;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 118
    :goto_0
    return v0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 167
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->j:Ljava/util/List;

    return-object v0

    .line 162
    :catch_0
    move-exception v0

    goto :goto_0

    .line 164
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 129
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 135
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->h:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0

    .line 132
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected static e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 183
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->k:Ljava/util/List;

    return-object v0

    .line 178
    :catch_0
    move-exception v0

    goto :goto_0

    .line 180
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected static f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 193
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 199
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->l:Ljava/util/List;

    return-object v0

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0

    .line 196
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method private static f(Ljava/lang/String;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/ServerConnectionException;
        }
    .end annotation

    .prologue
    .line 272
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 274
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 275
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 276
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 277
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 278
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 279
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 281
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 282
    const-string v8, "result"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "OK"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 283
    new-instance v8, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 285
    :try_start_1
    const-string v9, "expire"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v8

    invoke-static {v8}, Lnet/metaps/sdk/H;->a(Ljava/util/Date;)V
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_0
    :try_start_2
    const-string v8, "urls"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 290
    const-string v8, "urls"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v0}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 292
    :cond_0
    const-string v8, "settings"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 293
    const-string v8, "settings"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v1}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 295
    :cond_1
    const-string v8, "strings"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 296
    const-string v8, "strings"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8, v2}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONObject;Ljava/util/Map;)V

    .line 298
    :cond_2
    const-string v8, "checklist"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 299
    const-string v8, "checklist"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 300
    const-string v9, "processes"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 301
    const-string v9, "processes"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9, v3}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 303
    :cond_3
    const-string v9, "executables"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 304
    const-string v9, "executables"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9, v4}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 306
    :cond_4
    const-string v9, "files"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 307
    const-string v9, "files"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    invoke-static {v9, v5}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 309
    :cond_5
    const-string v9, "packageNames"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 310
    const-string v9, "packageNames"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-static {v8, v6}, Lnet/metaps/sdk/H;->a(Lorg/json/JSONArray;Ljava/util/List;)V

    .line 313
    :cond_6
    const-string v8, "latestVersion"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 314
    const-string v8, "latestVersion"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lnet/metaps/sdk/H;->m:Ljava/lang/String;

    .line 316
    :cond_7
    const-string v8, "token"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 317
    const-string v8, "token"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lnet/metaps/sdk/H;->d:Ljava/lang/String;

    .line 319
    :cond_8
    const-string v8, "tokenSecret"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 320
    const-string v8, "tokenSecret"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    sput-object v7, Lnet/metaps/sdk/H;->e:Ljava/lang/String;

    .line 327
    :cond_9
    sput-object v0, Lnet/metaps/sdk/H;->f:Ljava/util/Map;

    .line 328
    sput-object v1, Lnet/metaps/sdk/H;->g:Ljava/util/Map;

    .line 329
    sput-object v2, Lnet/metaps/sdk/H;->h:Ljava/util/Map;

    .line 330
    sput-object v3, Lnet/metaps/sdk/H;->i:Ljava/util/List;

    .line 331
    sput-object v4, Lnet/metaps/sdk/H;->j:Ljava/util/List;

    .line 332
    sput-object v5, Lnet/metaps/sdk/H;->k:Ljava/util/List;

    .line 333
    sput-object v6, Lnet/metaps/sdk/H;->l:Ljava/util/List;

    .line 338
    return-void

    .line 286
    :catch_0
    move-exception v8

    .line 287
    const/4 v8, 0x0

    invoke-static {v8}, Lnet/metaps/sdk/H;->a(Ljava/util/Date;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 334
    :catch_1
    move-exception v0

    .line 335
    const-string v0, "SettingsLoader"

    const-string v1, "Can not decode setting\'s list"

    invoke-static {v0, v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    new-instance v0, Lnet/metaps/util/ServerConnectionException;

    const-string v1, "Can not decode setting\'s list"

    invoke-direct {v0, v1}, Lnet/metaps/util/ServerConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_a
    :try_start_3
    const-string v0, "message"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/metaps/sdk/H;->o:Ljava/lang/String;

    .line 325
    new-instance v0, Lnet/metaps/util/ServerConnectionException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not get setting\'s list :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lnet/metaps/sdk/H;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/metaps/util/ServerConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method protected static g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 208
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/H;->h()V
    :try_end_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 214
    :goto_0
    sget-object v0, Lnet/metaps/sdk/H;->m:Ljava/lang/String;

    return-object v0

    .line 209
    :catch_0
    move-exception v0

    goto :goto_0

    .line 211
    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method protected static h()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/metaps/util/ServerConnectionException;,
            Lnet/metaps/util/DeviceInfoException;
        }
    .end annotation

    .prologue
    .line 237
    invoke-static {}, Lnet/metaps/sdk/H;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    :goto_0
    return-void

    .line 240
    :cond_0
    sget-object v8, Lnet/metaps/sdk/H;->g:Ljava/util/Map;

    monitor-enter v8

    .line 242
    :try_start_0
    new-instance v0, Lnet/metaps/sdk/a;

    invoke-direct {v0}, Lnet/metaps/sdk/a;-><init>()V

    .line 243
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 244
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "userIdentifier"

    sget-object v4, Lnet/metaps/sdk/Factory;->a:Landroid/app/Activity;

    invoke-static {}, Lnet/metaps/sdk/Const;->d()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lnet/metaps/sdk/Const;->e()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lnet/metaps/util/c;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "mode"

    invoke-static {}, Lnet/metaps/sdk/Const;->a()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "env"

    invoke-static {}, Lnet/metaps/sdk/Const;->f()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "said"

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string v3, "lcl"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 249
    invoke-static {}, Lnet/metaps/sdk/Const;->g()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const v5, 0xea60

    const v6, 0xea60

    const/16 v7, 0xa

    invoke-virtual/range {v0 .. v7}, Lnet/metaps/sdk/a;->b(Ljava/lang/String;Ljava/util/List;ZZIII)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, "SettingsLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {v0}, Lnet/metaps/sdk/H;->f(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 240
    :try_start_1
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 254
    :catch_0
    move-exception v0

    .line 255
    :try_start_2
    invoke-static {}, Lnet/metaps/sdk/H;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/H;->f(Ljava/lang/String;)V

    .line 256
    const/4 v1, 0x0

    invoke-static {v1}, Lnet/metaps/sdk/H;->a(Ljava/util/Date;)V

    .line 257
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lnet/metaps/util/DeviceInfoException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    .line 258
    throw v0

    .line 260
    :catch_1
    move-exception v0

    .line 261
    invoke-static {}, Lnet/metaps/sdk/H;->j()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/H;->f(Ljava/lang/String;)V

    .line 263
    const-string v1, "serverConnectionError"

    invoke-static {v1}, Lnet/metaps/sdk/H;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const/4 v2, 0x0

    invoke-static {v2}, Lnet/metaps/sdk/H;->a(Ljava/util/Date;)V

    .line 265
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    .line 266
    new-instance v0, Lnet/metaps/util/ServerConnectionException;

    invoke-direct {v0, v1}, Lnet/metaps/util/ServerConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private static i()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 222
    sget-object v1, Lnet/metaps/sdk/H;->n:Ljava/util/Date;

    if-nez v1, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v0

    .line 225
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 226
    sget-object v2, Lnet/metaps/sdk/H;->n:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static j()Ljava/lang/String;
    .locals 4

    .prologue
    .line 359
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-static {}, Ljava/util/GregorianCalendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 361
    const/16 v2, 0xc

    const/16 v3, 0xa

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 362
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\t{ \t\"result\":\"OK\", \t\"message\":\"\", \t\"expire\":\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 366
    const-string v1, "\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "strings"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\": { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 367
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionConfirm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Confirm offer Results\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 368
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionRefresh"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Refresh\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 369
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionPrevious"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Previous\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 370
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "optionFinish"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Finish and back\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 371
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "timeOut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Loading time out\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 372
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "waitingMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Loading... please wait a few seconds\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 373
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "deviceInfoError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Connection not possible due to terminal error\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 374
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "noNetworkError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Can not be used without network\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 375
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "serverConnectionError"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Failed to retrieve data. Please wait a few moments before retrying.\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 376
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "loadingMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Now Loading...\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 377
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "webviewErrorTimeOut"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"No available network!\", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 378
    const-string v1, "\t\t\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "webviewErrorMaintenance"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\":\"Our servers are currently under maintenance.\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 379
    const-string v1, "\t} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 380
    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    return-object v0
.end method
