.class Lnet/metaps/util/e;
.super Ljava/lang/Object;
.source "Waiting.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private final synthetic a:Z

.field private final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(ZLandroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-boolean p1, p0, Lnet/metaps/util/e;->a:Z

    iput-object p2, p0, Lnet/metaps/util/e;->b:Landroid/app/Activity;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 48
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    .line 49
    iget-boolean v0, p0, Lnet/metaps/util/e;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/metaps/util/e;->b:Landroid/app/Activity;

    instance-of v0, v0, Lnet/metaps/util/f;

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lnet/metaps/util/e;->b:Landroid/app/Activity;

    check-cast v0, Lnet/metaps/util/f;

    invoke-interface {v0}, Lnet/metaps/util/f;->a()V

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
