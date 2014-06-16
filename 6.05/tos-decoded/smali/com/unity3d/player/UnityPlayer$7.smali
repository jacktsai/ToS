.class final Lcom/unity3d/player/UnityPlayer$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->b(ILandroid/view/KeyEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:I

.field final synthetic e:I

.field final synthetic f:I

.field final synthetic g:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;IIZIII)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$7;->g:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$7;->a:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$7;->b:I

    iput-boolean p4, p0, Lcom/unity3d/player/UnityPlayer$7;->c:Z

    iput p5, p0, Lcom/unity3d/player/UnityPlayer$7;->d:I

    iput p6, p0, Lcom/unity3d/player/UnityPlayer$7;->e:I

    iput p7, p0, Lcom/unity3d/player/UnityPlayer$7;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$7;->g:Lcom/unity3d/player/UnityPlayer;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$7;->a:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$7;->b:I

    iget-boolean v3, p0, Lcom/unity3d/player/UnityPlayer$7;->c:Z

    iget v4, p0, Lcom/unity3d/player/UnityPlayer$7;->d:I

    iget v5, p0, Lcom/unity3d/player/UnityPlayer$7;->e:I

    iget v6, p0, Lcom/unity3d/player/UnityPlayer$7;->f:I

    invoke-static/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;IIZIII)V

    return-void
.end method
