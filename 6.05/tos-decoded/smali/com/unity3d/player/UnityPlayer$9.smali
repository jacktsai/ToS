.class final Lcom/unity3d/player/UnityPlayer$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->a(Landroid/view/MotionEvent;I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:F

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:I

.field final synthetic f:F

.field final synthetic g:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;FFFFIF)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$9;->g:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$9;->a:F

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$9;->b:F

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$9;->c:F

    iput p5, p0, Lcom/unity3d/player/UnityPlayer$9;->d:F

    iput p6, p0, Lcom/unity3d/player/UnityPlayer$9;->e:I

    iput p7, p0, Lcom/unity3d/player/UnityPlayer$9;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0}, Lcom/unity3d/player/UnityPlayer;->j(Lcom/unity3d/player/UnityPlayer;)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$9;->a:F

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$9;->b:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$9;->a:F

    iget v3, p0, Lcom/unity3d/player/UnityPlayer$9;->c:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$9;->b:F

    iget v4, p0, Lcom/unity3d/player/UnityPlayer$9;->d:F

    sub-float/2addr v0, v4

    neg-float v4, v0

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$9;->e:I

    const/16 v5, 0x8

    if-ne v0, v5, :cond_1

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$9;->f:F

    :goto_0
    iget-object v5, p0, Lcom/unity3d/player/UnityPlayer$9;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v5, v3, v4, v0}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;FFF)V

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;FF)V

    iget v0, p0, Lcom/unity3d/player/UnityPlayer$9;->e:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->g:Lcom/unity3d/player/UnityPlayer;

    invoke-static {v0, v6}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/unity3d/player/UnityPlayer$9;->e:I

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$9;->g:Lcom/unity3d/player/UnityPlayer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/unity3d/player/UnityPlayer;->b(Lcom/unity3d/player/UnityPlayer;Z)V

    goto :goto_1
.end method
