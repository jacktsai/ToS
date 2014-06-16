.class public Lnet/metaps/sdk/UnityWrapper;
.super Ljava/lang/Object;
.source "UnityWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    }
.end annotation


# static fields
.field private static final HANDLER_FAILED_CHECK_INVITATION:Ljava/lang/String; = "CheckInvitationFailed"

.field private static final HANDLER_FAILED_INITIALIZE:Ljava/lang/String; = "InitializeFailed"

.field private static final HANDLER_FAILED_OFFERWALL:Ljava/lang/String; = "LaunchOfferWallFailed"

.field private static final HANDLER_FAILED_PREPARE:Ljava/lang/String; = "PrepareFailed"

.field private static final HANDLER_FAILED_RUN_INSTALL:Ljava/lang/String; = "RunInstallReportFailed"

.field private static final HANDLER_FAILED_SEND_ACTION:Ljava/lang/String; = "SendActionFailed"

.field private static final HANDLER_FAILED_SHOW:Ljava/lang/String; = "ShowFailed"

.field private static final HANDLER_FA_LISTENER_CANCEL:Ljava/lang/String; = "FeaturedAppDialogOnCancelDialog"

.field private static final HANDLER_FA_LISTENER_DOWNLOAD:Ljava/lang/String; = "FeaturedAppDialogOnDownloadApplication"

.field private static final HANDLER_FA_LISTENER_NO_FEATURED:Ljava/lang/String; = "FeaturedAppDialogOnNoFeaturedApplication"

.field private static final HANDLER_FA_LISTENER_SHOW_DIALOG:Ljava/lang/String; = "FeaturedAppDialogOnShowDialog"

.field private static final HANDLER_FA_LISTENER_SHOW_NOT_POSSIBLE:Ljava/lang/String; = "FeaturedAppDialogOnShowDialogNotPossible"

.field private static final HANDLER_FA_LISTENER_START_WAITING:Ljava/lang/String; = "FeaturedAppDialogOnStartWaiting"

.field private static final HANDLER_RECEIVER_FINALIZE_ERROR:Ljava/lang/String; = "ReceiverFinalizeOnError"

.field private static final HANDLER_RECEIVER_RETRIEVE:Ljava/lang/String; = "ReceiverRetrieve"

.field public static final LOG_TAG:Ljava/lang/String; = "MetapsSDK"

.field public static final WRAPPER_VERSION:Ljava/lang/String; = "2.1.1"

.field private static handlerName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    sput-object v0, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized buildOfferFromJson(Ljava/lang/String;)Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    .locals 6
    .parameter "offerJsonString"

    .prologue
    .line 312
    const-class v4, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v4

    const/4 v1, 0x0

    .line 314
    .local v1, offer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    :try_start_0
    new-instance v2, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lnet/metaps/sdk/UnityWrapper$WrapperOffer;-><init>(Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #offer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    .local v2, offer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    move-object v1, v2

    .line 318
    .end local v2           #offer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    .restart local v1       #offer:Lnet/metaps/sdk/UnityWrapper$WrapperOffer;
    :goto_0
    monitor-exit v4

    return-object v1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, jsone:Lorg/json/JSONException;
    :try_start_1
    const-string v3, "MetapsSDK"

    const-string v5, "buildOfferFromJson() failed"

    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 312
    .end local v0           #jsone:Lorg/json/JSONException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public static declared-synchronized checkInvitation()V
    .locals 8

    .prologue
    .line 197
    const-class v5, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v5

    :try_start_0
    const-string v4, "MetapsSDK"

    const-string v6, "call checkInvitation"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :try_start_1
    invoke-static {}, Lnet/metaps/sdk/Factory;->checkInvitation()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/metaps/sdk/UninitializedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 213
    :goto_0
    monitor-exit v5

    return-void

    .line 200
    :catch_0
    move-exception v0

    .line 201
    .local v0, die:Lnet/metaps/util/DeviceInfoException;
    :try_start_2
    sget-object v4, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v6, "CheckInvitationFailed"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    const-string v4, "MetapsSDK"

    const-string v6, "checkInvitation() failed"

    invoke-static {v4, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 197
    .end local v0           #die:Lnet/metaps/util/DeviceInfoException;
    .local v1, re:Ljava/lang/RuntimeException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 203
    .end local v1           #re:Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .line 204
    .local v2, sce:Lnet/metaps/util/ServerConnectionException;
    :try_start_3
    sget-object v4, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v6, "CheckInvitationFailed"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const-string v4, "MetapsSDK"

    const-string v6, "checkInvitation() failed"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 206
    .end local v2           #sce:Lnet/metaps/util/ServerConnectionException;
    :catch_2
    move-exception v3

    .line 207
    .local v3, ue:Lnet/metaps/sdk/UninitializedException;
    sget-object v4, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v6, "CheckInvitationFailed"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const-string v4, "MetapsSDK"

    const-string v6, "checkInvitation() failed"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 209
    .end local v3           #ue:Lnet/metaps/sdk/UninitializedException;
    :catch_3
    move-exception v1

    .line 210
    .restart local v1       #re:Ljava/lang/RuntimeException;
    sget-object v4, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v6, "CheckInvitationFailed"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v4, "MetapsSDK"

    const-string v6, "checkInvitation() failed"

    invoke-static {v4, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static final getSdkModeProductionValue()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public static final getSdkModeTestValue()I
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method public static declared-synchronized initialize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 11
    .parameter "clientId"
    .parameter "applicationId"
    .parameter "applicationKey"
    .parameter "useReceiver"
    .parameter "mode"

    .prologue
    .line 90
    const-class v10, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v10

    :try_start_0
    const-string v2, "MetapsSDK"

    const-string v3, "call initialize"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 92
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 93
    .local v1, receiver:Lnet/metaps/sdk/Receiver;
    if-eqz p3, :cond_0

    .line 95
    new-instance v1, Lnet/metaps/sdk/UnityWrapper$1;

    .end local v1           #receiver:Lnet/metaps/sdk/Receiver;
    invoke-direct {v1}, Lnet/metaps/sdk/UnityWrapper$1;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v1       #receiver:Lnet/metaps/sdk/Receiver;
    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    .line 121
    :try_start_1
    invoke-static/range {v0 .. v5}, Lnet/metaps/sdk/Factory;->initialize(Landroid/app/Activity;Lnet/metaps/sdk/Receiver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnet/metaps/util/DeviceInfoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/metaps/util/ServerConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lnet/metaps/sdk/InvalidSettingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    .line 135
    :goto_0
    monitor-exit v10

    return-void

    .line 122
    :catch_0
    move-exception v6

    .line 123
    .local v6, die:Lnet/metaps/util/DeviceInfoException;
    :try_start_2
    sget-object v2, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v3, "InitializeFailed"

    invoke-static {v6}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v2, "MetapsSDK"

    const-string v3, "initialize() failed"

    invoke-static {v2, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 90
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #receiver:Lnet/metaps/sdk/Receiver;
    .end local v6           #die:Lnet/metaps/util/DeviceInfoException;
    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    .line 125
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #receiver:Lnet/metaps/sdk/Receiver;
    :catch_1
    move-exception v9

    .line 126
    .local v9, sce:Lnet/metaps/util/ServerConnectionException;
    :try_start_3
    sget-object v2, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v3, "InitializeFailed"

    invoke-static {v9}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    const-string v2, "MetapsSDK"

    const-string v3, "initialize() failed"

    invoke-static {v2, v3, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 128
    .end local v9           #sce:Lnet/metaps/util/ServerConnectionException;
    :catch_2
    move-exception v7

    .line 129
    .local v7, ise:Lnet/metaps/sdk/InvalidSettingException;
    sget-object v2, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v3, "InitializeFailed"

    invoke-static {v7}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v2, "MetapsSDK"

    const-string v3, "initialize() failed"

    invoke-static {v2, v3, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 131
    .end local v7           #ise:Lnet/metaps/sdk/InvalidSettingException;
    :catch_3
    move-exception v8

    .line 132
    .local v8, re:Ljava/lang/RuntimeException;
    sget-object v2, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v3, "InitializeFailed"

    invoke-static {v8}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v2, "MetapsSDK"

    const-string v3, "initialize() failed"

    invoke-static {v2, v3, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized launchOfferWall(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    .line 145
    const-class v4, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v4

    :try_start_0
    const-string v3, "MetapsSDK"

    const-string v5, "call launchOfferWall"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    .local v0, activity:Landroid/app/Activity;
    :try_start_1
    invoke-static {v0, p0, p1}, Lnet/metaps/sdk/Factory;->launchOfferWall(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnet/metaps/sdk/UninitializedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_0
    monitor-exit v4

    return-void

    .line 149
    :catch_0
    move-exception v2

    .line 150
    .local v2, ue:Lnet/metaps/sdk/UninitializedException;
    :try_start_2
    sget-object v3, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v5, "LaunchOfferWallFailed"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v3, "MetapsSDK"

    const-string v5, "launchOfferWall() failed"

    invoke-static {v3, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 145
    .end local v0           #activity:Landroid/app/Activity;
    .end local v2           #ue:Lnet/metaps/sdk/UninitializedException;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 152
    .restart local v0       #activity:Landroid/app/Activity;
    :catch_1
    move-exception v1

    .line 153
    .local v1, re:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v3, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v5, "LaunchOfferWallFailed"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v5, v6}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v3, "MetapsSDK"

    const-string v5, "launchOfferWall() failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized prepare(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "endUserId"
    .parameter "scenario"

    .prologue
    .line 238
    const-class v3, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v3

    :try_start_0
    const-string v2, "MetapsSDK"

    const-string v4, "call prepare"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    :try_start_1
    invoke-static {p0, p1}, Lnet/metaps/sdk/FeaturedAppDialog;->prepare(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnet/metaps/sdk/UninitializedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 248
    :goto_0
    monitor-exit v3

    return-void

    .line 241
    :catch_0
    move-exception v1

    .line 242
    .local v1, ue:Lnet/metaps/sdk/UninitializedException;
    :try_start_2
    sget-object v2, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v4, "PrepareFailed"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v2, "MetapsSDK"

    const-string v4, "prepare() failed"

    invoke-static {v2, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 238
    .end local v1           #ue:Lnet/metaps/sdk/UninitializedException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 244
    :catch_1
    move-exception v0

    .line 245
    .local v0, re:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v2, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v4, "PrepareFailed"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v2, "MetapsSDK"

    const-string v4, "prepare() failed"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized runInstallReport()V
    .locals 5

    .prologue
    .line 221
    const-class v2, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v2

    :try_start_0
    const-string v1, "MetapsSDK"

    const-string v3, "call runInstallReport"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :try_start_1
    invoke-static {}, Lnet/metaps/sdk/Factory;->runInstallReport()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 228
    .local v0, e:Ljava/lang/Exception;
    :goto_0
    monitor-exit v2

    return-void

    .line 224
    .end local v0           #e:Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 225
    .restart local v0       #e:Ljava/lang/Exception;
    :try_start_2
    sget-object v1, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v3, "RunInstallReportFailed"

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v1, "MetapsSDK"

    const-string v3, "runInstallReport() failed"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 221
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized sendAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .parameter "clientId"
    .parameter "applicationId"
    .parameter "applicationKey"
    .parameter "mode"

    .prologue
    .line 167
    const-class v6, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v6

    :try_start_0
    const-string v0, "MetapsSDK"

    const-string v2, "call sendAction"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    sget-object v1, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 169
    .local v1, activity:Landroid/app/Activity;
    new-instance v0, Lnet/metaps/sdk/UnityWrapper$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lnet/metaps/sdk/UnityWrapper$2;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    monitor-exit v6

    return-void

    .line 167
    .end local v1           #activity:Landroid/app/Activity;
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method public static setHandlerName(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 76
    const-string v0, "MetapsSDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "call setHandlerName "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    sput-object p0, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public static declared-synchronized show(Z)V
    .locals 8
    .parameter "useListener"

    .prologue
    .line 258
    const-class v5, Lnet/metaps/sdk/UnityWrapper;

    monitor-enter v5

    :try_start_0
    const-string v4, "MetapsSDK"

    const-string v6, "call show"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/unity3d/player/UnityPlayer;->currentActivity:Landroid/app/Activity;

    .line 260
    .local v0, activity:Landroid/app/Activity;
    const/4 v1, 0x0

    .line 261
    .local v1, listener:Lnet/metaps/sdk/FeaturedAppDialogListener;
    if-eqz p0, :cond_0

    .line 262
    new-instance v1, Lnet/metaps/sdk/UnityWrapper$3;

    .end local v1           #listener:Lnet/metaps/sdk/FeaturedAppDialogListener;
    invoke-direct {v1}, Lnet/metaps/sdk/UnityWrapper$3;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    .restart local v1       #listener:Lnet/metaps/sdk/FeaturedAppDialogListener;
    :cond_0
    :try_start_1
    invoke-static {v0, v1}, Lnet/metaps/sdk/FeaturedAppDialog;->show(Landroid/app/Activity;Lnet/metaps/sdk/FeaturedAppDialogListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Lnet/metaps/sdk/UninitializedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    .line 304
    :goto_0
    monitor-exit v5

    return-void

    .line 297
    :catch_0
    move-exception v3

    .line 298
    .local v3, ue:Lnet/metaps/sdk/UninitializedException;
    :try_start_2
    sget-object v4, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v6, "ShowFailed"

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const-string v4, "MetapsSDK"

    const-string v6, "show() failed"

    invoke-static {v4, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 258
    .end local v0           #activity:Landroid/app/Activity;
    .end local v1           #listener:Lnet/metaps/sdk/FeaturedAppDialogListener;
    .end local v3           #ue:Lnet/metaps/sdk/UninitializedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 300
    .restart local v0       #activity:Landroid/app/Activity;
    .restart local v1       #listener:Lnet/metaps/sdk/FeaturedAppDialogListener;
    :catch_1
    move-exception v2

    .line 301
    .local v2, re:Ljava/lang/RuntimeException;
    :try_start_3
    sget-object v4, Lnet/metaps/sdk/UnityWrapper;->handlerName:Ljava/lang/String;

    const-string v6, "ShowFailed"

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v6, v7}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    const-string v4, "MetapsSDK"

    const-string v6, "show() failed"

    invoke-static {v4, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method
