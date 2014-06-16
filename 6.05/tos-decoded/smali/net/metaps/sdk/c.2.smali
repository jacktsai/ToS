.class public Lnet/metaps/sdk/c;
.super Ljava/lang/Object;
.source "Campaign.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final a:J = 0x1L


# instance fields
.field private A:Ljava/lang/String;

.field private B:I

.field private C:I

.field private D:Ljava/lang/String;

.field private E:I

.field private F:Ljava/lang/String;

.field private G:I

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:I

.field private i:I

.field private j:I

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput v0, p0, Lnet/metaps/sdk/c;->G:I

    .line 11
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 265
    iget v0, p0, Lnet/metaps/sdk/c;->B:I

    return v0
.end method

.method public B()I
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lnet/metaps/sdk/c;->C:I

    return v0
.end method

.method public C()Ljava/lang/String;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lnet/metaps/sdk/c;->D:Ljava/lang/String;

    return-object v0
.end method

.method public D()I
    .locals 1

    .prologue
    .line 283
    iget v0, p0, Lnet/metaps/sdk/c;->E:I

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lnet/metaps/sdk/c;->F:Ljava/lang/String;

    return-object v0
.end method

.method public F()I
    .locals 1

    .prologue
    .line 295
    iget v0, p0, Lnet/metaps/sdk/c;->G:I

    return v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lnet/metaps/sdk/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 306
    invoke-virtual {p0}, Lnet/metaps/sdk/c;->v()Ljava/lang/String;

    move-result-object v0

    .line 308
    const-string v1, "{source_app_id}"

    invoke-static {}, Lnet/metaps/sdk/Factory;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 309
    const-string v1, "{client_id}"

    invoke-static {}, Lnet/metaps/sdk/Factory;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 310
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    .line 311
    const-string v1, "{end_user_id}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 319
    :goto_0
    if-eqz p2, :cond_9

    .line 320
    const-string v1, "{scenario}"

    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 324
    :goto_1
    invoke-static {}, Lnet/metaps/sdk/Factory;->e()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 325
    const-string v1, "{source_app_key}"

    invoke-static {}, Lnet/metaps/sdk/Factory;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 329
    :goto_2
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 330
    invoke-virtual {p0}, Lnet/metaps/sdk/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 331
    const-string v1, "{appId}"

    invoke-virtual {p0}, Lnet/metaps/sdk/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-virtual {p0}, Lnet/metaps/sdk/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 334
    :cond_0
    invoke-virtual {p0}, Lnet/metaps/sdk/c;->b()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 335
    const-string v1, "{campaign}"

    invoke-virtual {p0}, Lnet/metaps/sdk/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_1
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 338
    invoke-static {}, Lnet/metaps/sdk/Factory;->f()Ljava/lang/String;

    move-result-object v1

    .line 339
    if-eqz v1, :cond_2

    .line 340
    const-string v3, "{imei}"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 343
    :cond_2
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 344
    invoke-static {}, Lnet/metaps/sdk/Factory;->g()Ljava/lang/String;

    move-result-object v1

    .line 345
    if-eqz v1, :cond_3

    .line 346
    const-string v3, "{imsi}"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 349
    :cond_3
    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 350
    invoke-static {}, Lnet/metaps/sdk/Factory;->h()Ljava/lang/String;

    move-result-object v1

    .line 351
    if-eqz v1, :cond_4

    .line 352
    const-string v3, "{android_market_id}"

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 353
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    :cond_4
    const-string v1, ":end0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    const-string v1, ""

    .line 359
    :try_start_0
    invoke-static {}, Lnet/metaps/sdk/Const;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lnet/metaps/util/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v1

    .line 372
    :goto_3
    const-string v2, "="

    const-string v3, "!"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    const-string v3, "-"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "+"

    const-string v3, "_"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 373
    const-string v2, "{identifier}"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 374
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "identifier"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    .line 375
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_b

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "?identifier="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 381
    :cond_5
    :goto_4
    return-object v0

    .line 312
    :cond_6
    invoke-static {}, Lnet/metaps/sdk/Factory;->f()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-static {}, Lnet/metaps/sdk/Factory;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    .line 313
    const-string v1, "{end_user_id}"

    invoke-static {}, Lnet/metaps/sdk/Factory;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 314
    :cond_7
    invoke-static {}, Lnet/metaps/sdk/Factory;->g()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-static {}, Lnet/metaps/sdk/Factory;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    .line 315
    const-string v1, "{end_user_id}"

    invoke-static {}, Lnet/metaps/sdk/Factory;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 317
    :cond_8
    const-string v1, "{end_user_id}"

    invoke-static {}, Lnet/metaps/sdk/Factory;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 322
    :cond_9
    const-string v1, "{scenario}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 327
    :cond_a
    const-string v1, "{source_app_key}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 360
    :catch_0
    move-exception v1

    .line 361
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Blowfish failed to encrypt parameters. (try to use DES) : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    .line 363
    :try_start_1
    invoke-static {}, Lnet/metaps/sdk/Const;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lnet/metaps/util/a;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto/16 :goto_3

    .line 364
    :catch_1
    move-exception v1

    .line 365
    const-string v2, "Campaign"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DES Encryption failed to encrypt parameters. : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    const-string v1, ""

    goto/16 :goto_3

    .line 368
    :catch_2
    move-exception v1

    .line 369
    const-string v2, "Campaign"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Exception : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    const-string v1, ""

    goto/16 :goto_3

    .line 378
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "&identifier="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4
.end method

.method public a(I)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lnet/metaps/sdk/c;->d:I

    .line 96
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 83
    iput-object p1, p0, Lnet/metaps/sdk/c;->b:Ljava/lang/String;

    .line 84
    return-void
.end method

.method protected a(Lorg/json/JSONObject;)V
    .locals 2
    .parameter

    .prologue
    .line 391
    :try_start_0
    const-string v0, "app_number"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->a(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    :goto_0
    :try_start_1
    const-string v0, "application.name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->c(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 404
    :goto_1
    const-string v0, ""

    .line 406
    :try_start_2
    const-string v1, "application.price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 407
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 408
    :cond_0
    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    .line 418
    :cond_1
    :goto_2
    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->f(Ljava/lang/String;)V

    .line 420
    :try_start_3
    const-string v0, "img_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->d(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 425
    :goto_3
    :try_start_4
    const-string v0, "icon_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->e(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_6

    .line 430
    :goto_4
    :try_start_5
    const-string v0, "application.description"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->g(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_7

    .line 434
    :goto_5
    const-string v0, ""

    .line 436
    :try_start_6
    const-string v1, "application.outcome_condition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 437
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    :cond_2
    const-string v1, "outcome_condition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_8

    move-result-object v0

    .line 448
    :cond_3
    :goto_6
    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->v(Ljava/lang/String;)V

    .line 450
    :try_start_7
    const-string v0, "intro"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->h(Ljava/lang/String;)V
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_a

    .line 455
    :goto_7
    :try_start_8
    const-string v0, "social_msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->i(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_b

    .line 460
    :goto_8
    :try_start_9
    const-string v0, "limit_time"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->l(Ljava/lang/String;)V
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_c

    .line 465
    :goto_9
    :try_start_a
    const-string v0, "remain_sec"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->n(Ljava/lang/String;)V
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_d

    .line 470
    :goto_a
    :try_start_b
    const-string v0, "catchcopy"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->m(Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_e

    .line 475
    :goto_b
    :try_start_c
    const-string v0, "package_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->j(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_f

    .line 480
    :goto_c
    :try_start_d
    const-string v0, "point"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->e(I)V
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_10

    .line 485
    :goto_d
    :try_start_e
    const-string v0, "android_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->q(Ljava/lang/String;)V
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_11

    .line 490
    :goto_e
    :try_start_f
    const-string v0, "app_version"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->p(Ljava/lang/String;)V
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_12

    .line 495
    :goto_f
    :try_start_10
    const-string v0, "display_order"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->f(I)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_13

    .line 500
    :goto_10
    :try_start_11
    const-string v0, "iphone_url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->r(Ljava/lang/String;)V
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_14

    .line 505
    :goto_11
    :try_start_12
    const-string v0, "reward_currency"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->s(Ljava/lang/String;)V
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_15

    .line 510
    :goto_12
    :try_start_13
    const-string v0, "reward_notify"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->t(Ljava/lang/String;)V
    :try_end_13
    .catch Lorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_16

    .line 515
    :goto_13
    :try_start_14
    const-string v0, "reward_point"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->g(I)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_17

    .line 520
    :goto_14
    :try_start_15
    const-string v0, "reward_rate"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->h(I)V
    :try_end_15
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_18

    .line 525
    :goto_15
    :try_start_16
    const-string v0, "reward_skin"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->u(Ljava/lang/String;)V
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_19

    .line 530
    :goto_16
    :try_start_17
    const-string v0, "install_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->d(I)V
    :try_end_17
    .catch Lorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_1a

    .line 535
    :goto_17
    :try_start_18
    const-string v0, "app_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->i(I)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1b

    .line 540
    :goto_18
    :try_start_19
    const-string v0, "sdk_flag"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->j(I)V
    :try_end_19
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_1c

    .line 545
    :goto_19
    :try_start_1a
    const-string v0, "reward_max_count"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->b(I)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1d

    .line 549
    :goto_1a
    return-void

    .line 392
    :catch_0
    move-exception v0

    .line 393
    const-string v0, "app_number is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 397
    :catch_1
    move-exception v0

    .line 399
    :try_start_1b
    const-string v0, "app_name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/metaps/sdk/c;->c(Ljava/lang/String;)V
    :try_end_1b
    .catch Lorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_2

    goto/16 :goto_1

    .line 400
    :catch_2
    move-exception v0

    .line 401
    const-string v0, "app_name is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 410
    :catch_3
    move-exception v1

    .line 411
    const-string v1, "price is not set."

    invoke-static {v1}, Lnet/metaps/sdk/B;->a(Ljava/lang/String;)V

    .line 413
    :try_start_1c
    const-string v1, "price"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_4

    move-result-object v0

    goto/16 :goto_2

    .line 414
    :catch_4
    move-exception v1

    .line 415
    const-string v1, "outcome_condition is not set."

    invoke-static {v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 421
    :catch_5
    move-exception v0

    .line 422
    const-string v0, "img_url is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_3

    .line 426
    :catch_6
    move-exception v0

    .line 427
    const-string v0, "icon_url is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 431
    :catch_7
    move-exception v0

    .line 432
    const-string v0, "description is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 440
    :catch_8
    move-exception v1

    .line 441
    const-string v1, "outcome_condition is not set."

    invoke-static {v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    .line 443
    :try_start_1d
    const-string v1, "outcome_condition"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_9

    move-result-object v0

    goto/16 :goto_6

    .line 444
    :catch_9
    move-exception v1

    .line 445
    const-string v1, "outcome_condition is not set."

    invoke-static {v1}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 451
    :catch_a
    move-exception v0

    .line 452
    const-string v0, "intro is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 456
    :catch_b
    move-exception v0

    .line 457
    const-string v0, "social_msg is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 461
    :catch_c
    move-exception v0

    .line 462
    const-string v0, "limit_time is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 466
    :catch_d
    move-exception v0

    .line 467
    const-string v0, "remain_sec is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 471
    :catch_e
    move-exception v0

    .line 472
    const-string v0, "catchcopy is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 476
    :catch_f
    move-exception v0

    .line 477
    const-string v0, "package_name is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_c

    .line 481
    :catch_10
    move-exception v0

    .line 482
    const-string v0, "point is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 486
    :catch_11
    move-exception v0

    .line 487
    const-string v0, "android_url is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_e

    .line 491
    :catch_12
    move-exception v0

    .line 492
    const-string v0, "app_version is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_f

    .line 496
    :catch_13
    move-exception v0

    .line 497
    const-string v0, "display_order is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_10

    .line 501
    :catch_14
    move-exception v0

    .line 502
    const-string v0, "iphone_url is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 506
    :catch_15
    move-exception v0

    .line 507
    const-string v0, "reward_currency is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_12

    .line 511
    :catch_16
    move-exception v0

    .line 512
    const-string v0, "reward_notify is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_13

    .line 516
    :catch_17
    move-exception v0

    .line 517
    const-string v0, "reward_point is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 521
    :catch_18
    move-exception v0

    .line 522
    const-string v0, "reward_rate is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_15

    .line 526
    :catch_19
    move-exception v0

    .line 527
    const-string v0, "reward_skin is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_16

    .line 531
    :catch_1a
    move-exception v0

    .line 532
    const-string v0, "install_count is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 536
    :catch_1b
    move-exception v0

    .line 537
    const-string v0, "reward_rate is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_18

    .line 541
    :catch_1c
    move-exception v0

    .line 542
    const-string v0, "reward_rate is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_19

    .line 546
    :catch_1d
    move-exception v0

    .line 547
    const-string v0, "setMaxcount is not set."

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    goto/16 :goto_1a
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lnet/metaps/sdk/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput p1, p0, Lnet/metaps/sdk/c;->h:I

    .line 120
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lnet/metaps/sdk/c;->c:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lnet/metaps/sdk/c;->d:I

    return v0
.end method

.method public c(I)V
    .locals 0
    .parameter

    .prologue
    .line 125
    iput p1, p0, Lnet/metaps/sdk/c;->i:I

    .line 126
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lnet/metaps/sdk/c;->e:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lnet/metaps/sdk/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)V
    .locals 0
    .parameter

    .prologue
    .line 131
    iput p1, p0, Lnet/metaps/sdk/c;->j:I

    .line 132
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 107
    iput-object p1, p0, Lnet/metaps/sdk/c;->f:Ljava/lang/String;

    .line 108
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lnet/metaps/sdk/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)V
    .locals 0
    .parameter

    .prologue
    .line 143
    iput p1, p0, Lnet/metaps/sdk/c;->l:I

    .line 144
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 113
    iput-object p1, p0, Lnet/metaps/sdk/c;->g:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lnet/metaps/sdk/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)V
    .locals 0
    .parameter

    .prologue
    .line 250
    iput p1, p0, Lnet/metaps/sdk/c;->y:I

    .line 251
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    iput-object p1, p0, Lnet/metaps/sdk/c;->k:Ljava/lang/String;

    .line 138
    return-void
.end method

.method public g()I
    .locals 1

    .prologue
    .line 116
    iget v0, p0, Lnet/metaps/sdk/c;->h:I

    return v0
.end method

.method public g(I)V
    .locals 0
    .parameter

    .prologue
    .line 268
    iput p1, p0, Lnet/metaps/sdk/c;->B:I

    .line 269
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 149
    iput-object p1, p0, Lnet/metaps/sdk/c;->m:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public h()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lnet/metaps/sdk/c;->i:I

    return v0
.end method

.method public h(I)V
    .locals 0
    .parameter

    .prologue
    .line 274
    iput p1, p0, Lnet/metaps/sdk/c;->C:I

    .line 275
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lnet/metaps/sdk/c;->n:Ljava/lang/String;

    .line 156
    return-void
.end method

.method public i()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lnet/metaps/sdk/c;->j:I

    return v0
.end method

.method public i(I)V
    .locals 0
    .parameter

    .prologue
    .line 286
    iput p1, p0, Lnet/metaps/sdk/c;->E:I

    .line 287
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lnet/metaps/sdk/c;->o:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lnet/metaps/sdk/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public j(I)V
    .locals 0
    .parameter

    .prologue
    .line 298
    iput p1, p0, Lnet/metaps/sdk/c;->G:I

    .line 299
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    .line 197
    return-void
.end method

.method public k()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lnet/metaps/sdk/c;->l:I

    return v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 202
    iput-object p1, p0, Lnet/metaps/sdk/c;->q:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lnet/metaps/sdk/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lnet/metaps/sdk/c;->r:Ljava/lang/String;

    .line 209
    return-void
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lnet/metaps/sdk/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Lnet/metaps/sdk/c;->s:Ljava/lang/String;

    .line 215
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lnet/metaps/sdk/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 220
    iput-object p1, p0, Lnet/metaps/sdk/c;->t:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public o()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 165
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/metaps/sdk/c;->v()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/metaps/sdk/c;->v()Ljava/lang/String;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lnet/metaps/sdk/c;->v()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    iget-object v2, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_4

    .line 169
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 170
    if-eqz v2, :cond_0

    array-length v0, v2

    if-lez v0, :cond_0

    move v0, v1

    .line 171
    :goto_0
    array-length v3, v2

    if-lt v0, v3, :cond_2

    .line 189
    :cond_0
    :goto_1
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    .line 192
    :cond_1
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    return-object v0

    .line 172
    :cond_2
    aget-object v3, v2, v0

    .line 173
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 174
    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 175
    if-eqz v3, :cond_3

    array-length v4, v3

    if-lt v4, v7, :cond_3

    const-string v4, "id"

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 176
    aget-object v0, v3, v6

    iput-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    goto :goto_1

    .line 171
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_4
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 183
    iget-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lt v2, v7, :cond_0

    const-string v2, "id"

    aget-object v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 185
    aget-object v0, v0, v6

    iput-object v0, p0, Lnet/metaps/sdk/c;->p:Ljava/lang/String;

    goto :goto_1
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 226
    iput-object p1, p0, Lnet/metaps/sdk/c;->u:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lnet/metaps/sdk/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 232
    iput-object p1, p0, Lnet/metaps/sdk/c;->v:Ljava/lang/String;

    .line 233
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lnet/metaps/sdk/c;->r:Ljava/lang/String;

    return-object v0
.end method

.method public q(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lnet/metaps/sdk/c;->w:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lnet/metaps/sdk/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public r(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 244
    iput-object p1, p0, Lnet/metaps/sdk/c;->x:Ljava/lang/String;

    .line 245
    return-void
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lnet/metaps/sdk/c;->t:Ljava/lang/String;

    return-object v0
.end method

.method public s(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lnet/metaps/sdk/c;->z:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnet/metaps/sdk/c;->u:Ljava/lang/String;

    return-object v0
.end method

.method public t(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 262
    iput-object p1, p0, Lnet/metaps/sdk/c;->A:Ljava/lang/String;

    .line 263
    return-void
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lnet/metaps/sdk/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public u(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 280
    iput-object p1, p0, Lnet/metaps/sdk/c;->D:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lnet/metaps/sdk/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public v(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lnet/metaps/sdk/c;->F:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lnet/metaps/sdk/c;->x:Ljava/lang/String;

    return-object v0
.end method

.method public x()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lnet/metaps/sdk/c;->y:I

    return v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 253
    iget-object v0, p0, Lnet/metaps/sdk/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lnet/metaps/sdk/c;->A:Ljava/lang/String;

    return-object v0
.end method
