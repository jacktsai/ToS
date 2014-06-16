.class final Lcom/unity3d/player/f$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unity3d/player/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final b:[I

.field final synthetic c:Lcom/unity3d/player/f;


# direct methods
.method public constructor <init>(Lcom/unity3d/player/f;I[I)V
    .locals 0

    iput-object p1, p0, Lcom/unity3d/player/f$a;->c:Lcom/unity3d/player/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/unity3d/player/f$a;->a:I

    iput-object p3, p0, Lcom/unity3d/player/f$a;->b:[I

    return-void
.end method
