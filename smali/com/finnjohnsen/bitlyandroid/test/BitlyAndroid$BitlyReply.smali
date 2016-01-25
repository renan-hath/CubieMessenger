.class public Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;
.super Ljava/lang/Object;
.source "BitlyAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BitlyReply"
.end annotation


# instance fields
.field public errorCode:Ljava/lang/Integer;

.field public errorMessage:Ljava/lang/String;

.field public longUrl:Ljava/lang/String;

.field public result:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;

.field public statusCode:Ljava/lang/String;

.field final synthetic this$0:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;


# direct methods
.method public constructor <init>(Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "this$0"    # Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;
    .param p2, "longUrl"    # Ljava/lang/String;
    .param p3, "jsonText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 64
    iput-object p1, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->this$0:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->longUrl:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->longUrl:Ljava/lang/String;

    .line 66
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v7, "bitlyMessage":Lorg/json/JSONObject;
    const-string/jumbo v0, "errorCode"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->errorCode:Ljava/lang/Integer;

    .line 68
    const-string/jumbo v0, "errorMessage"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->errorMessage:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "statusCode"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->statusCode:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, "results"

    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 72
    .local v8, "results":Lorg/json/JSONObject;
    invoke-virtual {v8, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 73
    .local v9, "urlResult":Lorg/json/JSONObject;
    new-instance v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;

    const-string/jumbo v1, "hash"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, "shortCNAMEUrl"

    .line 74
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "shortKeywordUrl"

    .line 75
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "shortUrl"

    .line 76
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v1, "userHash"

    .line 77
    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;-><init>(Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->result:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;

    .line 78
    return-void
.end method


# virtual methods
.method public getShortUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyReply;->result:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;

    iget-object v0, v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyResult;->shortUrl:Ljava/lang/String;

    return-object v0
.end method
