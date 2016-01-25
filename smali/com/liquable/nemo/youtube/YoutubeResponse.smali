.class public Lcom/liquable/nemo/youtube/YoutubeResponse;
.super Ljava/lang/Object;
.source "YoutubeResponse.java"


# instance fields
.field apiVersion:Ljava/lang/String;

.field data:Lcom/liquable/nemo/youtube/YoutubeResponseData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    return-void
.end method


# virtual methods
.method public final getApiVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponse;->apiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public final getData()Lcom/liquable/nemo/youtube/YoutubeResponseData;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponse;->data:Lcom/liquable/nemo/youtube/YoutubeResponseData;

    return-object v0
.end method

.method public final setApiVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "apiVersion"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponse;->apiVersion:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public final setData(Lcom/liquable/nemo/youtube/YoutubeResponseData;)V
    .locals 0
    .param p1, "data"    # Lcom/liquable/nemo/youtube/YoutubeResponseData;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponse;->data:Lcom/liquable/nemo/youtube/YoutubeResponseData;

    .line 25
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "YoutubeResponse [apiVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/youtube/YoutubeResponse;->apiVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/youtube/YoutubeResponse;->data:Lcom/liquable/nemo/youtube/YoutubeResponseData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
