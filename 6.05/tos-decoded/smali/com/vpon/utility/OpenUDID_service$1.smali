.class Lcom/vpon/utility/OpenUDID_service$1;
.super Landroid/os/Binder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpon/utility/OpenUDID_service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/utility/OpenUDID_service;


# direct methods
.method constructor <init>(Lcom/vpon/utility/OpenUDID_service;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/vpon/utility/OpenUDID_service$1;->a:Lcom/vpon/utility/OpenUDID_service;

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"

    .prologue
    .line 29
    iget-object v0, p0, Lcom/vpon/utility/OpenUDID_service$1;->a:Lcom/vpon/utility/OpenUDID_service;

    const-string v1, "openudid_prefs"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vpon/utility/OpenUDID_service;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 31
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    const-string v1, "openudid"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 33
    const/4 v0, 0x1

    return v0
.end method
