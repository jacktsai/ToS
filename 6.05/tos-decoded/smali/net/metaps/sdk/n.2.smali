.class Lnet/metaps/sdk/n;
.super Ljava/lang/Object;
.source "FeaturedAppDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lnet/metaps/sdk/m;

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lnet/metaps/sdk/m;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/n;->a:Lnet/metaps/sdk/m;

    iput-object p2, p0, Lnet/metaps/sdk/n;->b:Landroid/app/Activity;

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lnet/metaps/sdk/n;->b:Landroid/app/Activity;

    invoke-static {v0}, Lnet/metaps/sdk/FeaturedAppDialog;->b(Landroid/app/Activity;)V

    .line 231
    return-void
.end method
