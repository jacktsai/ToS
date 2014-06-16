.class Lnet/metaps/sdk/r;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"

# interfaces
.implements Landroid/webkit/WebView$PictureListener;


# instance fields
.field private final synthetic a:Landroid/widget/ImageView;

.field private final synthetic b:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/r;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lnet/metaps/sdk/r;->b:Landroid/view/View;

    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V
    .locals 3
    .parameter "paramWebView"
    .parameter "paramPicture"

    .prologue
    const/4 v2, 0x0

    .line 317
    invoke-virtual {p1}, Landroid/webkit/WebView;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 319
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->g()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->c(Landroid/app/Activity;)V

    .line 320
    iget-object v0, p0, Lnet/metaps/sdk/r;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 321
    invoke-virtual {p1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 322
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v1, -0x100

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 323
    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setAlpha(I)V

    .line 324
    invoke-static {}, Lnet/metaps/sdk/FeaturedAppDialog;->h()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 327
    iget-object v0, p0, Lnet/metaps/sdk/r;->b:Landroid/view/View;

    new-instance v1, Lnet/metaps/sdk/s;

    invoke-direct {v1, p0}, Lnet/metaps/sdk/s;-><init>(Lnet/metaps/sdk/r;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_0
    return-void
.end method
