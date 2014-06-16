.class public Lorg/scribe/model/Request;
.super Ljava/lang/Object;


# static fields
.field private static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final DEFAULT_CONTENT_TYPE:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field private static NOOP:Lorg/scribe/model/RequestTuner;


# instance fields
.field private bodyParams:Lorg/scribe/model/ParameterList;

.field private bytePayload:[B

.field private charset:Ljava/lang/String;

.field private connectTimeout:Ljava/lang/Long;

.field private connection:Ljava/net/HttpURLConnection;

.field private connectionKeepAlive:Z

.field private followRedirects:Z

.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private payload:Ljava/lang/String;

.field private querystringParams:Lorg/scribe/model/ParameterList;

.field private readTimeout:Ljava/lang/Long;

.field private url:Ljava/lang/String;

.field private verb:Lorg/scribe/model/Verb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/scribe/model/Request$1;

    invoke-direct {v0}, Lorg/scribe/model/Request$1;-><init>()V

    sput-object v0, Lorg/scribe/model/Request;->NOOP:Lorg/scribe/model/RequestTuner;

    return-void
.end method

.method public constructor <init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    iput-object v1, p0, Lorg/scribe/model/Request;->bytePayload:[B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/scribe/model/Request;->connectionKeepAlive:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/scribe/model/Request;->followRedirects:Z

    iput-object v1, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    iput-object v1, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    iput-object p1, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    iput-object p2, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-direct {v0}, Lorg/scribe/model/ParameterList;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-direct {v0}, Lorg/scribe/model/ParameterList;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    return-void
.end method

.method private createConnection()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCompleteUrl()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    if-nez v0, :cond_0

    const-string v2, "http.keepAlive"

    iget-boolean v0, p0, Lorg/scribe/model/Request;->connectionKeepAlive:Z

    if-eqz v0, :cond_1

    const-string v0, "true"

    :goto_0
    invoke-static {v2, v0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    iput-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-boolean v1, p0, Lorg/scribe/model/Request;->followRedirects:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_0
    return-void

    :cond_1
    const-string v0, "false"

    goto :goto_0
.end method


# virtual methods
.method addBody(Ljava/net/HttpURLConnection;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Content-Length"

    array-length v1, p2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Content-Type"

    const-string v1, "application/x-www-form-urlencoded"

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method public addBodyParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0, p1, p2}, Lorg/scribe/model/ParameterList;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addHeaders(Ljava/net/HttpURLConnection;)V
    .locals 3

    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addPayload(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    return-void
.end method

.method public addPayload([B)V
    .locals 1

    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lorg/scribe/model/Request;->bytePayload:[B

    return-void
.end method

.method public addQuerystringParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0, p1, p2}, Lorg/scribe/model/ParameterList;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method doSend(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    invoke-virtual {v1}, Lorg/scribe/model/Verb;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    iget-object v1, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    :cond_1
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0, v0}, Lorg/scribe/model/Request;->addHeaders(Ljava/net/HttpURLConnection;)V

    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->PUT:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Lorg/scribe/model/Verb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    sget-object v1, Lorg/scribe/model/Verb;->POST:Lorg/scribe/model/Verb;

    invoke-virtual {v0, v1}, Lorg/scribe/model/Verb;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getByteBodyContents()[B

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/scribe/model/Request;->addBody(Ljava/net/HttpURLConnection;[B)V

    :cond_3
    invoke-virtual {p1, p0}, Lorg/scribe/model/RequestTuner;->tune(Lorg/scribe/model/Request;)V

    new-instance v0, Lorg/scribe/model/Response;

    iget-object v1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    invoke-direct {v0, v1}, Lorg/scribe/model/Response;-><init>(Ljava/net/HttpURLConnection;)V

    return-object v0
.end method

.method public getBodyContents()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getByteBodyContents()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getBodyParams()Lorg/scribe/model/ParameterList;
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    return-object v0
.end method

.method getByteBodyContents()[B
    .locals 4

    iget-object v0, p0, Lorg/scribe/model/Request;->bytePayload:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/scribe/model/Request;->bytePayload:[B

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/scribe/model/Request;->payload:Ljava/lang/String;

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/scribe/model/Request;->bodyParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0}, Lorg/scribe/model/ParameterList;->asFormUrlEncodedString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported Charset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getCharset()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    goto :goto_0
.end method

.method public getCompleteUrl()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    iget-object v1, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/scribe/model/ParameterList;->appendTo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/scribe/model/Request;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getQueryStringParams()Lorg/scribe/model/ParameterList;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/scribe/model/ParameterList;

    invoke-direct {v0}, Lorg/scribe/model/ParameterList;-><init>()V

    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/scribe/model/ParameterList;->addQuerystring(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/scribe/model/Request;->querystringParams:Lorg/scribe/model/ParameterList;

    invoke-virtual {v0, v1}, Lorg/scribe/model/ParameterList;->addAll(Lorg/scribe/model/ParameterList;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthException;

    const-string v2, "Malformed URL"

    invoke-direct {v1, v2, v0}, Lorg/scribe/exceptions/OAuthException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSanitizedUrl()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    const-string v1, "\\?.*"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\:\\d{4}"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVerb()Lorg/scribe/model/Verb;
    .locals 1

    iget-object v0, p0, Lorg/scribe/model/Request;->verb:Lorg/scribe/model/Verb;

    return-object v0
.end method

.method public send()Lorg/scribe/model/Response;
    .locals 1

    sget-object v0, Lorg/scribe/model/Request;->NOOP:Lorg/scribe/model/RequestTuner;

    invoke-virtual {p0, v0}, Lorg/scribe/model/Request;->send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;

    move-result-object v0

    return-object v0
.end method

.method public send(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lorg/scribe/model/Request;->createConnection()V

    invoke-virtual {p0, p1}, Lorg/scribe/model/Request;->doSend(Lorg/scribe/model/RequestTuner;)Lorg/scribe/model/Response;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/scribe/exceptions/OAuthConnectionException;

    invoke-direct {v1, v0}, Lorg/scribe/exceptions/OAuthConnectionException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lorg/scribe/model/Request;->charset:Ljava/lang/String;

    return-void
.end method

.method public setConnectTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/model/Request;->connectTimeout:Ljava/lang/Long;

    return-void
.end method

.method setConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lorg/scribe/model/Request;->connection:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public setConnectionKeepAlive(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/scribe/model/Request;->connectionKeepAlive:Z

    return-void
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/scribe/model/Request;->followRedirects:Z

    return-void
.end method

.method public setReadTimeout(ILjava/util/concurrent/TimeUnit;)V
    .locals 2

    int-to-long v0, p1

    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lorg/scribe/model/Request;->readTimeout:Ljava/lang/Long;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, "@Request(%s %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getVerb()Lorg/scribe/model/Verb;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lorg/scribe/model/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
