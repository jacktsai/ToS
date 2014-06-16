.class Lnet/metaps/sdk/f;
.super Ljava/lang/Thread;
.source "FeaturedAppDialog.java"


# instance fields
.field private final synthetic a:Landroid/app/Activity;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/f;->a:Landroid/app/Activity;

    iput-object p2, p0, Lnet/metaps/sdk/f;->b:Ljava/lang/String;

    iput-object p3, p0, Lnet/metaps/sdk/f;->c:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v1, 0x0

    .line 129
    const-string v0, "maxRetryPreload"

    invoke-static {v0}, Lnet/metaps/sdk/H;->d(Ljava/lang/String;)I

    move-result v3

    .line 131
    invoke-static {v9}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Ljava/lang/String;)V

    move v0, v1

    .line 132
    :goto_0
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->a()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    if-lt v0, v3, :cond_1

    .line 162
    :cond_0
    invoke-static {v1}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Z)V

    .line 164
    return-void

    .line 133
    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 135
    :try_start_0
    iget-object v0, p0, Lnet/metaps/sdk/f;->a:Landroid/app/Activity;

    iget-object v4, p0, Lnet/metaps/sdk/f;->b:Ljava/lang/String;

    iget-object v5, p0, Lnet/metaps/sdk/f;->c:Ljava/lang/String;

    invoke-static {v0, v4, v5}, Lnet/metaps/sdk/w;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    .line 136
    if-eqz v4, :cond_3

    .line 137
    const-string v0, "packageName"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->b(Ljava/lang/String;)V

    .line 138
    new-instance v5, Lnet/metaps/sdk/a;

    invoke-direct {v5}, Lnet/metaps/sdk/a;-><init>()V

    .line 139
    const-string v0, "urlApplication"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v0, v6, v7, v8}, Lnet/metaps/sdk/a;->b(Ljava/lang/String;Ljava/util/List;ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Ljava/lang/String;)V

    .line 141
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_3

    .line 143
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v5, 0x7

    if-lt v0, v5, :cond_2

    iget-object v0, p0, Lnet/metaps/sdk/f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 144
    iget-object v0, p0, Lnet/metaps/sdk/f;->a:Landroid/app/Activity;

    new-instance v5, Lnet/metaps/sdk/g;

    iget-object v6, p0, Lnet/metaps/sdk/f;->a:Landroid/app/Activity;

    invoke-direct {v5, p0, v6}, Lnet/metaps/sdk/g;-><init>(Lnet/metaps/sdk/f;Landroid/app/Activity;)V

    invoke-virtual {v0, v5}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 152
    :cond_2
    new-instance v5, Ljava/net/URL;

    const-string v0, "urlCloseButton"

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 153
    invoke-virtual {v5}, Ljava/net/URL;->getContent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    .line 154
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_0

    .line 157
    :catch_0
    move-exception v0

    .line 158
    invoke-static {v9}, Lnet/metaps/sdk/FeaturedAppDialog;->a(Ljava/lang/String;)V

    .line 159
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/B;->b(Ljava/lang/String;)V

    :cond_3
    move v0, v2

    goto/16 :goto_0
.end method
