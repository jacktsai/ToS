.class public abstract Lorg/scribe/builder/api/DefaultApi20;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/scribe/builder/api/Api;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Lorg/scribe/model/OAuthConfig;)Lorg/scribe/oauth/OAuthService;
    .locals 1

    new-instance v0, Lorg/scribe/oauth/OAuth20ServiceImpl;

    invoke-direct {v0, p0, p1}, Lorg/scribe/oauth/OAuth20ServiceImpl;-><init>(Lorg/scribe/builder/api/DefaultApi20;Lorg/scribe/model/OAuthConfig;)V

    return-object v0
.end method

.method public abstract getAccessTokenEndpoint()Ljava/lang/String;
.end method

.method public getAccessTokenExtractor()Lorg/scribe/extractors/AccessTokenExtractor;
    .locals 1

    new-instance v0, Lorg/scribe/extractors/TokenExtractor20Impl;

    invoke-direct {v0}, Lorg/scribe/extractors/TokenExtractor20Impl;-><init>()V

    return-object v0
.end method

.method public getAccessTokenVerb()Lorg/scribe/model/Verb;
    .locals 1

    sget-object v0, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    return-object v0
.end method

.method public abstract getAuthorizationUrl(Lorg/scribe/model/OAuthConfig;)Ljava/lang/String;
.end method
