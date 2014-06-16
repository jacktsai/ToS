.class Lnet/metaps/sdk/s;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/r;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/r;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/s;->a:Lnet/metaps/sdk/r;

    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 330
    const/4 v0, 0x2

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->a(I)V

    .line 331
    return-void
.end method
