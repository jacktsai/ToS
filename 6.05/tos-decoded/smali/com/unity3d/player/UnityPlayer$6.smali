.class final Lcom/unity3d/player/UnityPlayer$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->onKeyMultiple(IILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Landroid/view/KeyEvent;

.field final synthetic c:I

.field final synthetic d:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;ILandroid/view/KeyEvent;I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$6;->d:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$6;->a:I

    iput-object p3, p0, Lcom/unity3d/player/UnityPlayer$6;->b:Landroid/view/KeyEvent;

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$6;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    const/4 v8, 0x0

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$6;->a:I

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->b:Landroid/view/KeyEvent;

    iget-object v2, p0, Lcom/unity3d/player/UnityPlayer$6;->b:Landroid/view/KeyEvent;

    invoke-virtual {v2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getScanCode()I

    move-result v4

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->b:Landroid/view/KeyEvent;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v6

    move v7, v8

    :goto_0
    iget v0, p0, Lcom/unity3d/player/UnityPlayer$6;->c:I

    if-ge v7, v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->d:Lcom/unity3d/player/UnityPlayer;

    const/4 v3, 0x1

    invoke-static/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;IIZIII)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$6;->d:Lcom/unity3d/player/UnityPlayer;

    move v3, v8

    invoke-static/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;IIZIII)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    return-void
.end method
