.class public Lcom/vpon/utility/AtsErrorWarningUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static printErrorLog(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 11
    packed-switch p0, :pswitch_data_0

    .line 19
    const-string v0, "ATS SDK error"

    const-string v1, "unKnow error \u8bf7\u6d3d\u5ba2\u670d\u4eba\u5458"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    const-string v0, "ATS SDK state is "

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-void

    .line 13
    :pswitch_0
    const-string v0, "ATS SDK error"

    const-string v1, "GOAL_ID_LENGTH_WARNING"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 16
    :pswitch_1
    const-string v0, "ATS SDK error"

    const-string v1, "CONNECT_TO_SERVER_ERROR"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch -0x3ea
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static printWarningLog(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "goalId"

    .prologue
    const/16 v3, -0x3e9

    .line 27
    if-nez p0, :cond_1

    .line 28
    invoke-static {v3}, Lcom/vpon/utility/AtsErrorWarningUtil;->printErrorLog(I)V

    .line 29
    new-instance v0, Ljava/lang/String;

    const-string v1, "Please Enter goalId"

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 32
    :cond_1
    const-string v0, ""

    .line 34
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "The goalId length is not 36, "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "please check vpon goalId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-static {v3}, Lcom/vpon/utility/AtsErrorWarningUtil;->printErrorLog(I)V

    goto :goto_0
.end method
