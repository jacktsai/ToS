.class public Lorg/scribe/builder/ServiceBuilder;
.super Ljava/lang/Object;


# instance fields
.field private api:Lorg/scribe/builder/api/Api;

.field private apiKey:Ljava/lang/String;

.field private apiSecret:Ljava/lang/String;

.field private callback:Ljava/lang/String;

.field private debugStream:Ljava/io/OutputStream;

.field private scope:Ljava/lang/String;

.field private signatureType:Lorg/scribe/model/SignatureType;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "oob"

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    sget-object v0, Lorg/scribe/model/SignatureType;->Header:Lorg/scribe/model/SignatureType;

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->signatureType:Lorg/scribe/model/SignatureType;

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->debugStream:Ljava/io/OutputStream;

    return-void
.end method

.method private createApi(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/api/Api;"
        }
    .end annotation

    const-string v0, "Api class cannot be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/scribe/builder/api/Api;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    const-string v2, "Error while creating the Api object"

    invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method


# virtual methods
.method public apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Invalid Api key"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    return-object p0
.end method

.method public apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Invalid Api secret"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lorg/scribe/oauth/OAuthService;
    .locals 8

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    const-string v1, "You must specify a valid api through the provider() method"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    const-string v1, "You must provide an api key"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    const-string v1, "You must provide an api secret"

    invoke-static {v0, v1}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    new-instance v0, Lorg/scribe/model/OAuthConfig;

    iget-object v1, p0, Lorg/scribe/builder/ServiceBuilder;->apiKey:Ljava/lang/String;

    iget-object v2, p0, Lorg/scribe/builder/ServiceBuilder;->apiSecret:Ljava/lang/String;

    iget-object v3, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    iget-object v4, p0, Lorg/scribe/builder/ServiceBuilder;->signatureType:Lorg/scribe/model/SignatureType;

    iget-object v5, p0, Lorg/scribe/builder/ServiceBuilder;->scope:Ljava/lang/String;

    iget-object v6, p0, Lorg/scribe/builder/ServiceBuilder;->debugStream:Ljava/io/OutputStream;

    invoke-direct/range {v0 .. v6}, Lorg/scribe/model/OAuthConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/scribe/model/SignatureType;Ljava/lang/String;Ljava/io/OutputStream;)V

    invoke-interface {v7, v0}, Lorg/scribe/builder/api/Api;->createService(Lorg/scribe/model/OAuthConfig;)Lorg/scribe/oauth/OAuthService;

    move-result-object v0

    return-object v0
.end method

.method public callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Callback can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->callback:Ljava/lang/String;

    return-object p0
.end method

.method public debug()Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Lorg/scribe/builder/ServiceBuilder;->debugStream(Ljava/io/OutputStream;)Lorg/scribe/builder/ServiceBuilder;

    return-object p0
.end method

.method public debugStream(Ljava/io/OutputStream;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "debug stream can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->debugStream:Ljava/io/OutputStream;

    return-object p0
.end method

.method public provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lorg/scribe/builder/api/Api;",
            ">;)",
            "Lorg/scribe/builder/ServiceBuilder;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/scribe/builder/ServiceBuilder;->createApi(Ljava/lang/Class;)Lorg/scribe/builder/api/Api;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    return-object p0
.end method

.method public provider(Lorg/scribe/builder/api/Api;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Api cannot be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->api:Lorg/scribe/builder/api/Api;

    return-object p0
.end method

.method public scope(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Invalid OAuth scope"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkEmptyString(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->scope:Ljava/lang/String;

    return-object p0
.end method

.method public signatureType(Lorg/scribe/model/SignatureType;)Lorg/scribe/builder/ServiceBuilder;
    .locals 1

    const-string v0, "Signature type can\'t be null"

    invoke-static {p1, v0}, Lorg/scribe/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lorg/scribe/builder/ServiceBuilder;->signatureType:Lorg/scribe/model/SignatureType;

    return-object p0
.end method
