.class Lnet/metaps/sdk/a$a;
.super Landroid/os/AsyncTask;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/metaps/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lnet/metaps/sdk/a;

.field private b:I

.field private c:I


# direct methods
.method protected constructor <init>(Lnet/metaps/sdk/a;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 538
    iput-object p1, p0, Lnet/metaps/sdk/a$a;->a:Lnet/metaps/sdk/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 539
    iput p2, p0, Lnet/metaps/sdk/a$a;->b:I

    .line 540
    iput p3, p0, Lnet/metaps/sdk/a$a;->c:I

    .line 541
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .parameter

    .prologue
    .line 544
    const-string v2, ""

    .line 546
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 547
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 548
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, [Lorg/apache/http/Header;

    .line 549
    iget v3, p0, Lnet/metaps/sdk/a$a;->b:I

    iget v4, p0, Lnet/metaps/sdk/a$a;->c:I

    invoke-static {v0, v1, v3, v4}, Lnet/metaps/util/b;->a(Ljava/lang/String;[Lorg/apache/http/Header;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/metaps/util/ServerMaintenanceException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 558
    :goto_0
    iget-object v1, p0, Lnet/metaps/sdk/a$a;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/String;)V

    .line 559
    return-object v0

    .line 551
    :catch_0
    move-exception v0

    .line 552
    iget-object v1, p0, Lnet/metaps/sdk/a$a;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/Exception;)V

    move-object v0, v2

    goto :goto_0

    .line 553
    :catch_1
    move-exception v0

    .line 554
    iget-object v1, p0, Lnet/metaps/sdk/a$a;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/Exception;)V

    move-object v0, v2

    goto :goto_0

    .line 555
    :catch_2
    move-exception v0

    .line 556
    iget-object v1, p0, Lnet/metaps/sdk/a$a;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/Exception;)V

    :cond_0
    move-object v0, v2

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 563
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/metaps/sdk/a$a;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/metaps/sdk/a$a;->a(Ljava/lang/String;)V

    return-void
.end method
