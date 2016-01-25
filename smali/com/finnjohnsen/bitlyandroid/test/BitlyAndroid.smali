.class public Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;
.super Ljava/lang/Object;
.source "BitlyAndroid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;,
        Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;,
        Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
    }
.end annotation


# static fields
.field public static service:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;


# instance fields
.field private final bitlyAuth:Ljava/lang/String;

.field private httpclient:Lorg/apache/http/client/HttpClient;

.field private lastResponse:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 133
    sget-object v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->BITLY:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    sput-object v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->service:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "login"    # Ljava/lang/String;
    .param p2, "apiKey"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 140
    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->lastResponse:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "&format=json&login="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "&apiKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->bitlyAuth:Ljava/lang/String;

    .line 144
    new-instance v0, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->httpclient:Lorg/apache/http/client/HttpClient;

    .line 145
    return-void
.end method

.method private getBitlyHttpResponseText(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "urlToShorten"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->getBitlyUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->bitlyAuth:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 149
    .local v3, "uri":Ljava/lang/String;
    new-instance v0, Lorg/apache/http/client/methods/HttpGet;

    invoke-direct {v0, v3}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "httpGet":Lorg/apache/http/client/methods/HttpGet;
    iget-object v4, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->httpclient:Lorg/apache/http/client/HttpClient;

    invoke-interface {v4, v0}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v2

    .line 151
    .local v2, "response":Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v2}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->getText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;

    move-result-object v1

    .line 152
    .local v1, "json":Ljava/lang/String;
    return-object v1
.end method

.method private getBitlyUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "http://api."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->service:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "/shorten?version=2.0.1&longUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getText(Lorg/apache/http/HttpResponse;)Ljava/lang/String;
    .locals 5
    .param p1, "response"    # Lorg/apache/http/HttpResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    .line 179
    .local v0, "is":Ljava/io/InputStream;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 180
    .local v2, "reader":Ljava/io/BufferedReader;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 181
    .local v3, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 182
    .local v1, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 185
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method getBitlyReply(Ljava/lang/String;)Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
    .locals 2
    .param p1, "urlToShorten"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->getBitlyHttpResponseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "httpResponse":Ljava/lang/String;
    new-instance v1, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;

    invoke-direct {v1, p0, p1, v0}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;-><init>(Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public getLastResponseFromBitLy()Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->lastResponse:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;

    return-object v0
.end method

.method public getShortUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "urlToShorten"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 169
    const/4 v1, 0x0

    .line 170
    .local v1, "reply":Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
    const/4 v0, 0x0

    .line 171
    .local v0, "httpResponse":Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->getBitlyHttpResponseText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    new-instance v1, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;

    .end local v1    # "reply":Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
    invoke-direct {v1, p0, p1, v0}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;-><init>(Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .restart local v1    # "reply":Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
    iput-object v1, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;->lastResponse:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;

    .line 174
    invoke-virtual {v1}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->getShortUrl()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
