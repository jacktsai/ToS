.class Lnet/metaps/sdk/F;
.super Ljava/lang/Object;
.source "Reporter.java"

# interfaces
.implements Ljava/lang/Runnable;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 235
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 237
    invoke-static {}, Lnet/metaps/sdk/E;->l()Lnet/metaps/sdk/E;

    move-result-object v0

    invoke-virtual {v0}, Lnet/metaps/sdk/E;->h()I

    .line 238
    return-void
.end method
