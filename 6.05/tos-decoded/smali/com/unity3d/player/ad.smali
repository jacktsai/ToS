.class final Lcom/unity3d/player/ad;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/ad;->a:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->b:Z

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->c:Z

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->d:Z

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->e:Z

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->f:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->g:Z

    return-void
.end method

.method static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/player/ad;->a:Z

    return-void
.end method

.method static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unity3d/player/ad;->a:Z

    return-void
.end method

.method static c()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/ad;->a:Z

    return v0
.end method


# virtual methods
.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/ad;->c:Z

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/ad;->g:Z

    return-void
.end method

.method final c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unity3d/player/ad;->d:Z

    return-void
.end method

.method final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->b:Z

    return-void
.end method

.method final e()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->e:Z

    return-void
.end method

.method final f()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/player/ad;->f:Z

    return-void
.end method

.method final g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->g:Z

    return v0
.end method

.method final h()Z
    .locals 1

    sget-boolean v0, Lcom/unity3d/player/ad;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->c:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->b:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->g:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->d:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->d:Z

    return v0
.end method

.method final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->e:Z

    return v0
.end method

.method final k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unity3d/player/ad;->f:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
