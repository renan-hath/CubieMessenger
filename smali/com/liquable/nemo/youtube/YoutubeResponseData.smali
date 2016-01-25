.class public Lcom/liquable/nemo/youtube/YoutubeResponseData;
.super Ljava/lang/Object;
.source "YoutubeResponseData.java"


# instance fields
.field items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;"
        }
    .end annotation
.end field

.field itemsPerPage:I

.field startIndex:I

.field totalItems:I

.field updated:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 17
    iget-object v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->items:Ljava/util/List;

    return-object v0
.end method

.method public final getItemsPerPage()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->itemsPerPage:I

    return v0
.end method

.method public final getStartIndex()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->startIndex:I

    return v0
.end method

.method public final getTotalItems()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->totalItems:I

    return v0
.end method

.method public final getUpdated()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->updated:Ljava/lang/String;

    return-object v0
.end method

.method public final setItems(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/youtube/YoutubeVideo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "items":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/youtube/YoutubeVideo;>;"
    iput-object p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->items:Ljava/util/List;

    .line 38
    return-void
.end method

.method public final setItemsPerPage(I)V
    .locals 0
    .param p1, "itemsPerPage"    # I

    .prologue
    .line 41
    iput p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->itemsPerPage:I

    .line 42
    return-void
.end method

.method public final setStartIndex(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->startIndex:I

    .line 46
    return-void
.end method

.method public final setTotalItems(I)V
    .locals 0
    .param p1, "totalItems"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->totalItems:I

    .line 50
    return-void
.end method

.method public final setUpdated(Ljava/lang/String;)V
    .locals 0
    .param p1, "updated"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->updated:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget-object v2, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 60
    iget-object v2, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/youtube/YoutubeVideo;

    .line 61
    .local v1, "item":Lcom/liquable/nemo/youtube/YoutubeVideo;
    invoke-virtual {v1}, Lcom/liquable/nemo/youtube/YoutubeVideo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 65
    .end local v1    # "item":Lcom/liquable/nemo/youtube/YoutubeVideo;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "YoutubeResponseData [updated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->updated:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", totalItems="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->totalItems:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", startIndex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->startIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", itemsPerPage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/liquable/nemo/youtube/YoutubeResponseData;->itemsPerPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", items="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 73
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
