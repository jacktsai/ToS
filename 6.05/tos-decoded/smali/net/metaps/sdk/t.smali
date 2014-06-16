.class Lnet/metaps/sdk/t;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "touchEvent"

    .prologue
    const/4 v5, 0x0

    .line 341
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 342
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    move-object v0, p1

    check-cast v0, Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScale()F

    move-result v0

    div-float/2addr v1, v0

    .line 343
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->i()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 344
    check-cast p1, Landroid/webkit/WebView;

    .end local p1
    invoke-virtual {p1}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Landroid/graphics/Picture;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Picture;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 346
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 347
    invoke-virtual {v0, v3}, Landroid/graphics/Picture;->draw(Landroid/graphics/Canvas;)V

    .line 348
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {v2, v0, v5}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    .line 349
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-lez v0, :cond_0

    .line 350
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_2

    .line 358
    :cond_0
    :goto_1
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->i()I

    move-result v0

    if-lez v0, :cond_1

    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->i()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-lez v0, :cond_1

    .line 359
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(I)V

    .line 362
    :cond_1
    return v5

    .line 351
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4, v0}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 352
    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->b(I)V

    goto :goto_1

    .line 350
    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
