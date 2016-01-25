.class public Lcom/liquable/nemo/forum/model/article/PictureReply;
.super Ljava/lang/Object;
.source "PictureReply.java"

# interfaces
.implements Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x5c833156146722cL


# instance fields
.field private final content:Ljava/lang/String;

.field private final pictureUrls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "content"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "pictureUrls"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 19
    .local p2, "pictureUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    .line 23
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 27
    if-ne p0, p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 30
    :cond_1
    instance-of v3, p1, Lcom/liquable/nemo/forum/model/article/PictureReply;

    if-nez v3, :cond_2

    move v1, v2

    .line 31
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 34
    check-cast v0, Lcom/liquable/nemo/forum/model/article/PictureReply;

    .line 36
    .local v0, "that":Lcom/liquable/nemo/forum/model/article/PictureReply;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v1, v2

    .line 37
    goto :goto_0

    .line 36
    :cond_4
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 39
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 40
    goto :goto_0

    .line 39
    :cond_6
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getPictureUrls()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 48
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 49
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 50
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 48
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PictureReply [content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pictureUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/PictureReply;->pictureUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
