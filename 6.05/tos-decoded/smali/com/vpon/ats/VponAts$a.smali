.class Lcom/vpon/ats/VponAts$a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vpon/ats/VponAts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vpon/ats/VponAts;


# direct methods
.method private constructor <init>(Lcom/vpon/ats/VponAts;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/vpon/ats/VponAts;Lcom/vpon/ats/VponAts$a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 96
    invoke-direct {p0, p1}, Lcom/vpon/ats/VponAts$a;-><init>(Lcom/vpon/ats/VponAts;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 9
    .parameter

    .prologue
    .line 108
    const/4 v0, 0x0

    aget-object v0, p1, v0

    move-object v7, v0

    check-cast v7, Ljava/lang/String;

    .line 109
    const/4 v0, 0x1

    aget-object v6, p1, v0

    check-cast v6, Ljava/lang/String;

    .line 110
    const/4 v0, 0x2

    aget-object v0, p1, v0

    move-object v8, v0

    check-cast v8, Ljava/lang/Boolean;

    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v0}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vpon/utility/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/utility/LocationUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vpon/utility/LocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    iget-object v1, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v1}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vpon/utility/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/utility/LocationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vpon/utility/LocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/vpon/ats/VponAts;->a:D

    .line 115
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    iget-object v1, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v1}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vpon/utility/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/utility/LocationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vpon/utility/LocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/vpon/ats/VponAts;->b:D

    .line 116
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    iget-object v1, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v1}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/vpon/utility/LocationUtil;->instance(Landroid/content/Context;)Lcom/vpon/utility/LocationUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vpon/utility/LocationUtil;->getLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    iput v1, v0, Lcom/vpon/ats/VponAts;->c:F

    .line 123
    :goto_0
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v0}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    iget-wide v1, v1, Lcom/vpon/ats/VponAts;->a:D

    iget-object v3, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    iget-wide v3, v3, Lcom/vpon/ats/VponAts;->b:D

    iget-object v5, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    iget v5, v5, Lcom/vpon/ats/VponAts;->c:F

    invoke-static/range {v0 .. v6}, Lcom/vpon/utility/AdOnJsonUtil;->getWebviewATSReqJson(Landroid/content/Context;DDFLjava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 125
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    const-string v1, "method"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 127
    const-string v1, "method"

    const-string v2, "Conversion"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_0
    const-string v1, "VponAtsTag"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v1, "VponAtsTag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "url: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "VponAtsTag"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "key: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vpon/utility/VPLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/vpon/utility/IOUtils;->instance()Lcom/vpon/utility/IOUtils;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "1.0.0"

    invoke-virtual {v1, v0, v7, v2}, Lcom/vpon/utility/IOUtils;->connectJSONServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    .line 142
    const-string v1, "X-ADON-STATUS"

    invoke-interface {v0, v1}, Lorg/apache/http/HttpResponse;->getLastHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 172
    :goto_1
    return-object v0

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/vpon/ats/VponAts;->a:D

    .line 119
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/vpon/ats/VponAts;->b:D

    .line 120
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    const/4 v1, 0x0

    iput v1, v0, Lcom/vpon/ats/VponAts;->c:F
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/spec/InvalidKeySpecException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/vpon/ats/ServiceUnavailableException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b

    goto/16 :goto_0

    .line 146
    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {v0}, Ljava/security/InvalidKeyException;->printStackTrace()V

    .line 172
    :goto_2
    const/16 v0, -0x3ea

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    .line 148
    :catch_1
    move-exception v0

    .line 149
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_2

    .line 150
    :catch_2
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    .line 152
    :catch_3
    move-exception v0

    .line 153
    invoke-virtual {v0}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_2

    .line 154
    :catch_4
    move-exception v0

    .line 155
    invoke-virtual {v0}, Ljava/security/spec/InvalidKeySpecException;->printStackTrace()V

    goto :goto_2

    .line 156
    :catch_5
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_2

    .line 158
    :catch_6
    move-exception v0

    .line 159
    invoke-virtual {v0}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_2

    .line 160
    :catch_7
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/security/NoSuchProviderException;->printStackTrace()V

    goto :goto_2

    .line 162
    :catch_8
    move-exception v0

    .line 163
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 164
    :catch_9
    move-exception v0

    .line 165
    invoke-virtual {v0}, Lcom/vpon/ats/ServiceUnavailableException;->printStackTrace()V

    goto :goto_2

    .line 166
    :catch_a
    move-exception v0

    .line 167
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_2

    .line 168
    :catch_b
    move-exception v0

    .line 169
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 2
    .parameter

    .prologue
    .line 178
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v0}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vpon/ats/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {v0}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/vpon/ats/a;->a(Landroid/content/Context;)V

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vpon/ats/VponAts;->a(Lcom/vpon/ats/VponAts;Ljava/lang/String;)V

    .line 190
    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/vpon/utility/AtsErrorWarningUtil;->printErrorLog(I)V

    .line 188
    iget-object v0, p0, Lcom/vpon/ats/VponAts$a;->a:Lcom/vpon/ats/VponAts;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vpon/ats/VponAts;->b(Lcom/vpon/ats/VponAts;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/vpon/ats/VponAts$a;->a([Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/vpon/ats/VponAts$a;->a(Ljava/lang/Integer;)V

    return-void
.end method
