.class final Lcom/unity3d/player/w$2;
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

    iput-object p1, p0, Lcom/unity3d/player/w$2;->a:Lcom/unity3d/player/w;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2}, Lcom/unity3d/player/UnityPlayer$a;-><init>(Lcom/unity3d/player/UnityPlayer;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    iget-object v0, p0, Lcom/unity3d/player/w$2;->a:Lcom/unity3d/player/w;

    invoke-static {v0}, Lcom/unity3d/player/w;->e(Lcom/unity3d/player/w;)Lcom/unity3d/player/UnityPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/unity3d/player/w$2;->a:Lcom/unity3d/player/w;

    invoke-static {v1}, Lcom/unity3d/player/w;->f(Lcom/unity3d/player/w;)F

    move-result v1

    iget-object v2, p0, Lcom/unity3d/player/w$2;->a:Lcom/unity3d/player/w;

    invoke-static {v2}, Lcom/unity3d/player/w;->g(Lcom/unity3d/player/w;)F

    move-result v2

    iget-object v3, p0, Lcom/unity3d/player/w$2;->a:Lcom/unity3d/player/w;

    invoke-static {v3}, Lcom/unity3d/player/w;->h(Lcom/unity3d/player/w;)F

    move-result v3

    iget-object v4, p0, Lcom/unity3d/player/w$2;->a:Lcom/unity3d/player/w;

    invoke-static {v4}, Lcom/unity3d/player/w;->i(Lcom/unity3d/player/w;)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/unity3d/player/UnityPlayer;->nativeGravity(FFFJ)V

    return-void
.end method
