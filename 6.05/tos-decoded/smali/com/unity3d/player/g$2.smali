.class final Lcom/unity3d/player/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/player/g;->a(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/unity3d/player/g;


# direct methods
.method constructor <init>(Lcom/unity3d/player/g;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/g$2;->b:Lcom/unity3d/player/g;

    iput-object p2, p0, Lcom/unity3d/player/g$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/unity3d/player/g$2;->b:Lcom/unity3d/player/g;

    iget-object v1, p0, Lcom/unity3d/player/g$2;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/unity3d/player/g$2;->b:Lcom/unity3d/player/g;

    invoke-static {v2}, Lcom/unity3d/player/g;->a(Lcom/unity3d/player/g;)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/unity3d/player/g;->a(Landroid/view/View;Z)V

    return-void
.end method
