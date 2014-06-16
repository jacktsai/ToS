.class public Lorg/scribe/builder/api/SimpleGeoApi;
.super Lorg/scribe/builder/api/DefaultApi10a;


# static fields
.field private static final ENDPOINT:Ljava/lang/String; = "these are not used since SimpleGeo uses 2 legged OAuth"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "these are not used since SimpleGeo uses 2 legged OAuth"

    return-object v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 1

    const-string v0, "these are not used since SimpleGeo uses 2 legged OAuth"

    return-object v0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "these are not used since SimpleGeo uses 2 legged OAuth"

    return-object v0
.end method
