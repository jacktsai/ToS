.class Lnet/metaps/sdk/a$b;
.super Landroid/os/AsyncTask;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/metaps/sdk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
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
    .line 576
    iput-object p1, p0, Lnet/metaps/sdk/a$b;->a:Lnet/metaps/sdk/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 577
    iput p2, p0, Lnet/metaps/sdk/a$b;->b:I

    .line 578
    iput p3, p0, Lnet/metaps/sdk/a$b;->c:I

    .line 579
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    .line 583
    const-string v3, ""

    .line 585
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 586
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    .line 587
    const/4 v1, 0x1

    aget-object v1, p1, v1

    check-cast v1, Ljava/util/List;

    .line 588
    const/4 v2, 0x2

    aget-object v2, p1, v2

    check-cast v2, [Lorg/apache/http/Header;

    .line 589
    iget v4, p0, Lnet/metaps/sdk/a$b;->b:I

    iget v5, p0, Lnet/metaps/sdk/a$b;->c:I

    invoke-static {v0, v1, v2, v4, v5}, Lnet/metaps/util/b;->a(Ljava/lang/String;Ljava/util/List;[Lorg/apache/http/Header;II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/metaps/util/ServerMaintenanceException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 598
    :goto_0
    iget-object v1, p0, Lnet/metaps/sdk/a$b;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/String;)V

    .line 599
    return-object v0

    .line 591
    :catch_0
    move-exception v0

    .line 592
    iget-object v1, p0, Lnet/metaps/sdk/a$b;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/Exception;)V

    move-object v0, v3

    goto :goto_0

    .line 593
    :catch_1
    move-exception v0

    .line 594
    iget-object v1, p0, Lnet/metaps/sdk/a$b;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/Exception;)V

    move-object v0, v3

    goto :goto_0

    .line 595
    :catch_2
    move-exception v0

    .line 596
    iget-object v1, p0, Lnet/metaps/sdk/a$b;->a:Lnet/metaps/sdk/a;

    invoke-static {v1, v0}, Lnet/metaps/sdk/a;->a(Lnet/metaps/sdk/a;Ljava/lang/Exception;)V

    :cond_0
    move-object v0, v3

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lnet/metaps/sdk/a$b;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lnet/metaps/sdk/a$b;->a(Ljava/lang/String;)V

    return-void
.end method
