.class public Lcom/liquable/nemo/youtube/YoutubeApiClient;
.super Ljava/lang/Object;
.source "YoutubeApiClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    }
.end annotation


# static fields
.field private static final FORMAT:Ljava/lang/String; = "jsonc"

.field private static final URL:Ljava/lang/String; = "https://gdata.youtube.com/feeds/api/"

.field private static final VERSIOIN:I = 0x2

.field private static final supportedCountryCode:[Ljava/lang/String;


# instance fields
.field private final httpService:Lcom/liquable/nemo/http/NemoHttpService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const/16 v0, 0x28

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "AR"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "AU"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "AT"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "BE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "BR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "CA"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "CL"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "CO"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "CZ"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "EG"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "FR"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "DE"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "GB"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "HK"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "HU"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "IN"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "IE"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "IL"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string/jumbo v2, "IT"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "JP"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "JO"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string/jumbo v2, "MY"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string/jumbo v2, "MX"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "MA"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "NL"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string/jumbo v2, "NZ"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string/jumbo v2, "PE"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string/jumbo v2, "PH"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "PL"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string/jumbo v2, "RU"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string/jumbo v2, "SA"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string/jumbo v2, "SG"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "ZA"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string/jumbo v2, "KR"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v2, "ES"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string/jumbo v2, "SE"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string/jumbo v2, "CH"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string/jumbo v2, "TW"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string/jumbo v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v2, "US"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/youtube/YoutubeApiClient;->supportedCountryCode:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/liquable/nemo/http/NemoHttpService;)V
    .locals 0
    .param p1, "httpService"    # Lcom/liquable/nemo/http/NemoHttpService;

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/liquable/nemo/youtube/YoutubeApiClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    .line 61
    return-void
.end method

.method private getMatchedLocale()Ljava/lang/String;
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "country":Ljava/lang/String;
    sget-object v1, Lcom/liquable/nemo/youtube/YoutubeApiClient;->supportedCountryCode:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    :goto_0
    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    goto :goto_0
.end method

.method private getParameters(II)Ljava/util/List;
    .locals 4
    .param p1, "startIndex"    # I
    .param p2, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "v"

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "key"

    const-string/jumbo v3, "AIzaSyAzkzveJkcwCEIFGw3l25Azoji5YXkZ-Zo"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "alt"

    const-string/jumbo v3, "jsonc"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "start-index"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "max-results"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 78
    return-object v0
.end method

.method private getResponse(Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/util/Optional;
    .locals 5
    .param p1, "urlSuffix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/apache/http/message/BasicNameValuePair;",
            ">;)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeResponseData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 83
    .local p2, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    iget-object v2, p0, Lcom/liquable/nemo/youtube/YoutubeApiClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    .line 85
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    .line 83
    invoke-virtual {v2, p1, p2, v3}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v0

    .line 87
    .local v0, "httpResult":Lcom/liquable/nemo/http/NemoHttpResult;
    invoke-virtual {v0}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v2

    if-nez v2, :cond_0

    .line 88
    new-instance v2, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v2}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>()V

    throw v2

    .line 91
    :cond_0
    invoke-static {}, Lcom/liquable/nemo/json/SimpleJsonMapper;->getInstance()Lcom/liquable/nemo/json/SimpleJsonMapper;

    move-result-object v2

    .line 92
    invoke-virtual {v0}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/liquable/nemo/youtube/YoutubeResponse;

    invoke-virtual {v2, v3, v4}, Lcom/liquable/nemo/json/SimpleJsonMapper;->decode(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/youtube/YoutubeResponse;

    .line 93
    .local v1, "youtubeResponse":Lcom/liquable/nemo/youtube/YoutubeResponse;
    iget-object v2, v1, Lcom/liquable/nemo/youtube/YoutubeResponse;->data:Lcom/liquable/nemo/youtube/YoutubeResponseData;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/liquable/nemo/youtube/YoutubeResponse;->data:Lcom/liquable/nemo/youtube/YoutubeResponseData;

    iget-object v2, v2, Lcom/liquable/nemo/youtube/YoutubeResponseData;->items:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 94
    iget-object v2, v1, Lcom/liquable/nemo/youtube/YoutubeResponse;->data:Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-static {v2}, Lcom/liquable/nemo/util/Optional;->of(Ljava/lang/Object;)Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    .line 97
    :goto_0
    return-object v2

    :cond_1
    invoke-static {}, Lcom/liquable/nemo/util/Optional;->absent()Lcom/liquable/nemo/util/Optional;

    move-result-object v2

    goto :goto_0
.end method

.method public static getSuggestionsByGoogleResult(Ljava/lang/String;)Ljava/util/List;
    .locals 8
    .param p0, "googleResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 35
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .local v4, "suggestions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v5, "^.*?\\("

    const-string/jumbo v6, ""

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "\\)$"

    const-string/jumbo v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 37
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 38
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    .line 39
    .local v2, "items":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_0

    .line 40
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v1

    .line 41
    .local v1, "item":Lorg/json/JSONArray;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "item":Lorg/json/JSONArray;
    :cond_0
    return-object v4
.end method


# virtual methods
.method public getStandardFeed(Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;II)Lcom/liquable/nemo/util/Optional;
    .locals 4
    .param p1, "category"    # Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    .param p2, "startIndex"    # I
    .param p3, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;",
            "II)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeResponseData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getParameters(II)Ljava/util/List;

    move-result-object v0

    .line 104
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "time"

    const-string/jumbo v3, "today"

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "http://ec2-52-36-4-251.us-west-2.compute.amazonaws.com/api/youtube/feed?locale="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 106
    invoke-direct {p0}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getMatchedLocale()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "&chart=most_popular"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 108
    invoke-virtual {p1}, Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;->getSuffix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getResponse(Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    return-object v1
.end method

.method public getSuggestions(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liquable/nemo/client/NetworkErrorException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 114
    invoke-static {p1}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 115
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    :goto_0
    return-object v3

    .line 117
    :cond_0
    const-string/jumbo v2, "http://suggestqueries.google.com/complete/search"

    .line 118
    .local v2, "url":Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v1, "parameters":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "client"

    const-string/jumbo v5, "youtube"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "ds"

    const-string/jumbo v5, "yt"

    invoke-direct {v3, v4, v5}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v3, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v4, "q"

    invoke-direct {v3, v4, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v3, p0, Lcom/liquable/nemo/youtube/YoutubeApiClient;->httpService:Lcom/liquable/nemo/http/NemoHttpService;

    const-string/jumbo v4, "http://suggestqueries.google.com/complete/search"

    .line 124
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v5

    .line 122
    invoke-virtual {v3, v4, v1, v5}, Lcom/liquable/nemo/http/NemoHttpService;->get(Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)Lcom/liquable/nemo/http/NemoHttpResult;

    move-result-object v0

    .line 126
    .local v0, "httpResult":Lcom/liquable/nemo/http/NemoHttpResult;
    invoke-virtual {v0}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidWithContent()Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    new-instance v3, Lcom/liquable/nemo/client/NetworkErrorException;

    invoke-direct {v3}, Lcom/liquable/nemo/client/NetworkErrorException;-><init>()V

    throw v3

    .line 130
    :cond_1
    invoke-virtual {v0}, Lcom/liquable/nemo/http/NemoHttpResult;->getContent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getSuggestionsByGoogleResult(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    goto :goto_0
.end method

.method public searchVideos(Ljava/lang/String;II)Lcom/liquable/nemo/util/Optional;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "startIndex"    # I
    .param p3, "maxResults"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lcom/liquable/nemo/util/Optional",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeResponseData;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/liquable/nemo/client/NetworkErrorException;
        }
    .end annotation

    .prologue
    .line 136
    invoke-direct {p0, p2, p3}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getParameters(II)Ljava/util/List;

    move-result-object v0

    .line 137
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/apache/http/message/BasicNameValuePair;>;"
    new-instance v1, Lorg/apache/http/message/BasicNameValuePair;

    const-string/jumbo v2, "q"

    invoke-direct {v1, v2, p1}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    const-string/jumbo v1, "http://ec2-52-36-4-251.us-west-2.compute.amazonaws.com/api/youtube/search"

    invoke-direct {p0, v1, v0}, Lcom/liquable/nemo/youtube/YoutubeApiClient;->getResponse(Ljava/lang/String;Ljava/util/List;)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    return-object v1
.end method
