.class final Lcom/unity3d/player/UnityPlayer$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/UnityPlayer;->dispatchTouchEvent(IIIFFJI)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:F

.field final synthetic c:F

.field final synthetic d:I

.field final synthetic e:J

.field final synthetic f:I

.field final synthetic g:Lcom/unity3d/player/UnityPlayer;


# direct methods
.method constructor <init>(Lcom/unity3d/player/UnityPlayer;IFFIJI)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/UnityPlayer$8;->g:Lcom/unity3d/player/UnityPlayer;

    iput p2, p0, Lcom/unity3d/player/UnityPlayer$8;->a:I

    iput p3, p0, Lcom/unity3d/player/UnityPlayer$8;->b:F

    iput p4, p0, Lcom/unity3d/player/UnityPlayer$8;->c:F

    iput p5, p0, Lcom/unity3d/player/UnityPlayer$8;->d:I

    iput-wide p6, p0, Lcom/unity3d/player/UnityPlayer$8;->e:J

    iput p8, p0, Lcom/unity3d/player/UnityPlayer$8;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/unity3d/player/UnityPlayer$8;->g:Lcom/unity3d/player/UnityPlayer;

    iget v1, p0, Lcom/unity3d/player/UnityPlayer$8;->a:I

    iget v2, p0, Lcom/unity3d/player/UnityPlayer$8;->b:F

    iget v3, p0, Lcom/unity3d/player/UnityPlayer$8;->c:F

    iget v4, p0, Lcom/unity3d/player/UnityPlayer$8;->d:I

    iget-wide v5, p0, Lcom/unity3d/player/UnityPlayer$8;->e:J

    iget v7, p0, Lcom/unity3d/player/UnityPlayer$8;->f:I

    invoke-static/range {v0 .. v7}, Lcom/unity3d/player/UnityPlayer;->a(Lcom/unity3d/player/UnityPlayer;IFFIJI)V

    return-void
.end method
