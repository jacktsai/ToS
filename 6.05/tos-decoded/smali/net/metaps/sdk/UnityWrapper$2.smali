.class Lnet/metaps/sdk/UnityWrapper$2;
.super Ljava/lang/Object;
.source "UnityWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/metaps/sdk/UnityWrapper;->sendAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$applicationId:Ljava/lang/String;

.field private final synthetic val$applicationKey:Ljava/lang/String;

.field private final synthetic val$clientId:Ljava/lang/String;

.field private final synthetic val$mode:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$clientId:Ljava/lang/String;

    iput-object p3, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$applicationId:Ljava/lang/String;

    iput-object p4, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$applicationKey:Ljava/lang/String;

    iput p5, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$mode:I

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 173
    :try_start_0
    iget-object v4, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$activity:Landroid/app/Activity;

    iget-object v5, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$clientId:Ljava/lang/String;

    iget-object v6, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$applicationId:Ljava/lang/String;

    iget-object v7, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$applicationKey:Ljava/lang/String;

    iget v8, p0, Lnet/metaps/sdk/UnityWrapper$2;->val$mode:I

    invoke-static {v4, v5, v6, v7, v8}, Lnet/metaps/sdk/Factory;->sendAction(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lnet/metaps/sdk/InvalidSettingException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_3

    .line 187
    :goto_0
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, die:Lnet/metaps/util/DeviceInfoException;
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SendActionFailed"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v4, "MetapsSDK"

    const-string v5, "sendAction() failed"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 177
    .end local v0           #die:Lnet/metaps/util/DeviceInfoException;
    :catch_1
    move-exception v3

    .line 178
    .local v3, sce:Lnet/metaps/util/ServerConnectionException;
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SendActionFailed"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v4, "MetapsSDK"

    const-string v5, "sendAction() failed"

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 180
    .end local v3           #sce:Lnet/metaps/util/ServerConnectionException;
    :catch_2
    move-exception v1

    .line 181
    .local v1, ise:Lnet/metaps/sdk/InvalidSettingException;
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SendActionFailed"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    const-string v4, "MetapsSDK"

    const-string v5, "sendAction() failed"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v1           #ise:Lnet/metaps/sdk/InvalidSettingException;
    :catch_3
    move-exception v2

    .line 184
    .local v2, re:Ljava/lang/RuntimeException;
    invoke-static {}, Lnet/metaps/sdk/UnityWrapper;->access$0()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SendActionFailed"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v4, "MetapsSDK"

    const-string v5, "sendAction() failed"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
