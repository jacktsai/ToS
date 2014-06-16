.class final Lcom/unity3d/player/w$7;
.super Lcom/unity3d/player/UnityPlayer$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/w;-><init>(Landroid/content/Context;Lcom/unity3d/player/UnityPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/unity3d/player/w;


# direct methods
.method constructor <init>(Lcom/unity3d/player/w;Lcom/unity3d/player/UnityPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-static {v0}, Lcom/unity3d/player/w;->e(Lcom/unity3d/player/w;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-static {v1}, Lcom/unity3d/player/w;->u(Lcom/unity3d/player/w;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-static {v2}, Lcom/unity3d/player/w;->u(Lcom/unity3d/player/w;)[F

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-static {v3}, Lcom/unity3d/player/w;->u(Lcom/unity3d/player/w;)[F

    move-result-object v3

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-static {v4}, Lcom/unity3d/player/w;->u(Lcom/unity3d/player/w;)[F

    move-result-object v4

    const/4 v5, 0x3

    aget v4, v4, v5

    iget-object v5, p0, Lcom/unity3d/player/w$7;->a:Lcom/unity3d/player/w;

    invoke-static {v5}, Lcom/unity3d/player/w;->v(Lcom/unity3d/player/w;)D

    move-result-wide v5

    invoke-virtual/range {v0 .. v6}, Lcom/unity3d/player/UnityPlayer;->nativeCompass(FFFFD)V

    return-void
.end method
