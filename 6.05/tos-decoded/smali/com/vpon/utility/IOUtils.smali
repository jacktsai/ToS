.class public final Lcom/vpon/utility/IOUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/vpon/utility/IOUtils;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

.field private d:Lorg/apache/http/params/HttpParams;

.field private e:Lorg/apache/http/conn/scheme/SchemeRegistry;


# direct methods
.method private constructor <init>()V
    .locals 5

    .prologue
    const/16 v1, 0x7530

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vpon/utility/IOUtils;->b:Ljava/lang/String;

    .line 57
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    iput-object v0, p0, Lcom/vpon/utility/IOUtils;->d:Lorg/apache/http/params/HttpParams;

    .line 60
    iget-object v0, p0, Lcom/vpon/utility/IOUtils;->d:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 61
    iget-object v0, p0, Lcom/vpon/utility/IOUtils;->d:Lorg/apache/http/params/HttpParams;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 62
    iget-object v0, p0, Lcom/vpon/utility/IOUtils;->d:Lorg/apache/http/params/HttpParams;

    const/16 v1, 0x2000

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    .line 64
    new-instance v0, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v0}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    iput-object v0, p0, Lcom/vpon/utility/IOUtils;->e:Lorg/apache/http/conn/scheme/SchemeRegistry;

    .line 65
    iget-object v0, p0, Lcom/vpon/utility/IOUtils;->e:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "http"

    invoke-static {}, Lorg/apache/http/conn/scheme/PlainSocketFactory;->getSocketFactory()Lorg/apache/http/conn/scheme/PlainSocketFactory;

    move-result-object v3

    const/16 v4, 0x50

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 66
    iget-object v0, p0, Lcom/vpon/utility/IOUtils;->e:Lorg/apache/http/conn/scheme/SchemeRegistry;

    new-instance v1, Lorg/apache/http/conn/scheme/Scheme;

    const-string v2, "https"

    invoke-static {}, Lorg/apache/http/conn/ssl/SSLSocketFactory;->getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;

    move-result-object v3

    const/16 v4, 0x1bb

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/http/conn/scheme/Scheme;-><init>(Ljava/lang/String;Lorg/apache/http/conn/scheme/SocketFactory;I)V

    invoke-virtual {v0, v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;->register(Lorg/apache/http/conn/scheme/Scheme;)Lorg/apache/http/conn/scheme/Scheme;

    .line 68
    return-void
.end method

.method public static final declared-synchronized instance()Lcom/vpon/utility/IOUtils;
    .locals 2

    .prologue
    .line 72
    const-class v1, Lcom/vpon/utility/IOUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/vpon/utility/IOUtils;->a:Lcom/vpon/utility/IOUtils;

    if-nez v0, :cond_0

    .line 74
    new-instance v0, Lcom/vpon/utility/IOUtils;

    invoke-direct {v0}, Lcom/vpon/utility/IOUtils;-><init>()V

    sput-object v0, Lcom/vpon/utility/IOUtils;->a:Lcom/vpon/utility/IOUtils;

    .line 77
    :cond_0
    sget-object v0, Lcom/vpon/utility/IOUtils;->a:Lcom/vpon/utility/IOUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public connectJSONServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;
    .locals 7
    .parameter "json"
    .parameter "uriString"
    .parameter "sdkVersion"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/ParseException;,
            Ljava/io/IOException;,
            Lcom/vpon/ats/ServiceUnavailableException;,
            Ljava/net/URISyntaxException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 84
    const-string v1, "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"

    .line 85
    const-string v2, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    invoke-static {v2, v1}, Lcom/vpon/utility/CryptUtils;->decTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 87
    const-string v1, "O4+gWecUjeNBCuwRbLprfpbXPUGl3A/Ac8HJxnr8A85UqiTMIJ50RxEkEp/urCSUrkICRuVt0JVss0komwdQQBz94D5XSKE3zlWSMplh+Al5BR99slEzLIZU7TJ7Upk/ZmZlY3UpXmRMX+zLEqybApfAlLEr67QoJBdbEpjHsnWxx5nZwHAdeYXwtgSFVGgtydkZBR+PGEjriyWhWkSTgFbO8yJTMxirdEtldU+604SemOFub2WqVHC86lrN+pnvfO9pfs+d99QgMno8MRVEX0EqTnf+qiVIJrCOJbv0cj7SWws7LTgWrGssmur08FEyY0mPCqUqY0/AEkTnwg4PkiOwny3y3hPVvRipMDxBUiTeOIC9U8UVGPD/T5bX+Qrrb2CV6DkfucIU0Ie5q8iC8KCVI6Uh4wu0SDavbqaZH5Dhtb2zLnmOF4qwBF8We4gkRJ63bosreSm1uGn3UoC2CRvOJTyyf8CcCijLnEm0V7Ob4GXFCJlnPKVMsJxbnlQV+ik9IKny/BGkE5j6Gqq1HQ=="

    .line 88
    const-string v2, "http://www.vpon.com/v/index.jsp88623698333service@vpon.com"

    invoke-static {v2, v1}, Lcom/vpon/utility/CryptUtils;->decTripleDES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-static {v1}, Lcom/vpon/utility/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/vpon/utility/CryptUtils;->getRsaPubKey([B)Ljava/security/PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/vpon/utility/CryptUtils;->getRsaEncryptCipher(Ljava/security/PublicKey;)Ljavax/crypto/Cipher;

    move-result-object v1

    .line 91
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 92
    invoke-static {v2, v1}, Lcom/vpon/utility/CryptUtils;->encryptData([BLjavax/crypto/Cipher;)[B

    move-result-object v1

    .line 93
    invoke-static {v1, v0}, Lcom/vpon/utility/Base64;->encodeToString([BZ)Ljava/lang/String;

    move-result-object p1

    .line 95
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 97
    new-instance v2, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v3, p0, Lcom/vpon/utility/IOUtils;->d:Lorg/apache/http/params/HttpParams;

    iget-object v4, p0, Lcom/vpon/utility/IOUtils;->e:Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;-><init>(Lorg/apache/http/params/HttpParams;Lorg/apache/http/conn/scheme/SchemeRegistry;)V

    iput-object v2, p0, Lcom/vpon/utility/IOUtils;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    .line 99
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    iget-object v3, p0, Lcom/vpon/utility/IOUtils;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    iget-object v4, p0, Lcom/vpon/utility/IOUtils;->d:Lorg/apache/http/params/HttpParams;

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    .line 101
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v3, v1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    .line 103
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 104
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "data"

    invoke-direct {v4, v5, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    new-instance v4, Lorg/apache/http/message/BasicNameValuePair;

    const-string v5, "p"

    const-string v6, "01"

    invoke-direct {v4, v5, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    new-instance v4, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v5, "UTF-8"

    invoke-direct {v4, v1, v5}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 110
    const-string v1, "X-ADON-SDK_NAME"

    const-string v4, "Android"

    invoke-virtual {v3, v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    const-string v1, "X-ADON-SDK_VERSION"

    invoke-virtual {v3, v1, p3}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iget-object v1, p0, Lcom/vpon/utility/IOUtils;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "Cookie"

    iget-object v4, p0, Lcom/vpon/utility/IOUtils;->b:Ljava/lang/String;

    invoke-virtual {v3, v1, v4}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    :cond_0
    invoke-interface {v2, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v1

    .line 122
    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_1

    .line 125
    const-string v0, "getStatusCode"

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    new-instance v0, Lcom/vpon/ats/ServiceUnavailableException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getStatusCode() != HttpStatus.SC_OK\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/vpon/ats/ServiceUnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    const-string v2, "Set-Cookie"

    invoke-interface {v1, v2}, Lorg/apache/http/HttpResponse;->getHeaders(Ljava/lang/String;)[Lorg/apache/http/Header;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-lt v0, v3, :cond_2

    .line 134
    iget-object v0, p0, Lcom/vpon/utility/IOUtils;->c:Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;

    invoke-virtual {v0}, Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;->closeExpiredConnections()V

    .line 136
    return-object v1

    .line 129
    :cond_2
    aget-object v4, v2, v0

    .line 131
    invoke-interface {v4}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/vpon/utility/IOUtils;->b:Ljava/lang/String;

    .line 129
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
