.class public Lorg/scribe/builder/api/GoogleApi;
.super Lorg/scribe/builder/api/DefaultApi10a;


# static fields
.field private static final AUTHORIZATION_URL:Ljava/lang/String; = "https://www.google.com/accounts/OAuthAuthorizeToken?oauth_token=%s"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/scribe/builder/api/DefaultApi10a;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccessTokenEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.google.com/accounts/OAuthGetAccessToken"

    return-object v0
.end method

.method public getAccessTokenVerb()Lorg/scribe/model/Verb;
    .locals 1

    sget-object v0, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    return-object v0
.end method

.method public getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
    .locals 4

    const-string v0, "https://www.google.com/accounts/OAuthAuthorizeToken?oauth_token=%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lorg/scribe/model/Token;->getToken()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRequestTokenEndpoint()Ljava/lang/String;
    .locals 1

    const-string v0, "https://www.google.com/accounts/OAuthGetRequestToken"

    return-object v0
.end method

.method public getRequestTokenVerb()Lorg/scribe/model/Verb;
    .locals 1

    sget-object v0, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;

    return-object v0
.end method
