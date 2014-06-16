.class Lcom/vpon/utility/OpenUDID_manager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpon/utility/OpenUDID_manager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/utility/OpenUDID_manager;


# direct methods
.method private constructor <init>(Lcom/vpon/utility/OpenUDID_manager;)V
    .locals 0
    .parameter

    .prologue
    .line 185
    iput-object p1, p0, Lcom/vpon/utility/OpenUDID_manager$a;->a:Lcom/vpon/utility/OpenUDID_manager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vpon/utility/OpenUDID_manager;Lcom/vpon/utility/OpenUDID_manager$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/vpon/utility/OpenUDID_manager$a;-><init>(Lcom/vpon/utility/OpenUDID_manager;)V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .parameter "a"
    .parameter "b"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/vpon/utility/OpenUDID_manager$a;->a:Lcom/vpon/utility/OpenUDID_manager;

    invoke-static {v0}, Lcom/vpon/utility/OpenUDID_manager;->a(Lcom/vpon/utility/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p0, Lcom/vpon/utility/OpenUDID_manager$a;->a:Lcom/vpon/utility/OpenUDID_manager;

    invoke-static {v0}, Lcom/vpon/utility/OpenUDID_manager;->a(Lcom/vpon/utility/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 189
    const/4 v0, 0x1

    .line 193
    :goto_0
    return v0

    .line 190
    :cond_0
    iget-object v0, p0, Lcom/vpon/utility/OpenUDID_manager$a;->a:Lcom/vpon/utility/OpenUDID_manager;

    invoke-static {v0}, Lcom/vpon/utility/OpenUDID_manager;->a(Lcom/vpon/utility/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/utility/OpenUDID_manager$a;->a:Lcom/vpon/utility/OpenUDID_manager;

    invoke-static {v1}, Lcom/vpon/utility/OpenUDID_manager;->a(Lcom/vpon/utility/OpenUDID_manager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 191
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
