.class public Lcom/liquable/nemo/forum/model/article/NormalArticle;
.super Ljava/lang/Object;
.source "NormalArticle.java"

# interfaces
.implements Lcom/liquable/nemo/forum/model/article/IArticleBody;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0xe9c57856e6212b2L


# instance fields
.field private final content:Ljava/lang/String;

.field private final height:I

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

.field private final title:Ljava/lang/String;

.field private final width:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "title"
        .end annotation
    .end param
    .param p2, "content"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "content"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "pictureUrls"
        .end annotation
    .end param
    .param p4, "width"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "width"
        .end annotation
    .end param
    .param p5, "height"    # I
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "height"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 40
    .local p3, "pictureUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    .line 43
    iput-object p3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    .line 44
    iput p4, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->width:I

    .line 45
    iput p5, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->height:I

    .line 46
    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)Lcom/liquable/nemo/forum/model/article/NormalArticle;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;II)",
            "Lcom/liquable/nemo/forum/model/article/NormalArticle;"
        }
    .end annotation

    .prologue
    .line 20
    .local p2, "pictureUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/forum/model/article/NormalArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    return-object v0
.end method

.method public static createWithoutPicture(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/forum/model/article/NormalArticle;
    .locals 6
    .param p0, "title"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 24
    new-instance v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    move-object v1, p0

    move-object v2, p1

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/forum/model/article/NormalArticle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;II)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p0, p1, :cond_1

    .line 90
    :cond_0
    :goto_0
    return v1

    .line 68
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 69
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 72
    check-cast v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;

    .line 74
    .local v0, "that":Lcom/liquable/nemo/forum/model/article/NormalArticle;
    iget v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->height:I

    iget v4, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->height:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->width:I

    iget v4, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->width:I

    if-eq v3, v4, :cond_5

    move v1, v2

    .line 78
    goto :goto_0

    .line 80
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :cond_6
    move v1, v2

    .line 81
    goto :goto_0

    .line 80
    :cond_7
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 83
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    :cond_9
    move v1, v2

    .line 84
    goto :goto_0

    .line 83
    :cond_a
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    if-nez v3, :cond_9

    .line 86
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 87
    goto :goto_0

    .line 86
    :cond_c
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->height:I

    return v0
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
    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 109
    iget v0, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 95
    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 96
    .local v0, "result":I
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_1
    add-int v0, v3, v2

    .line 97
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    :cond_0
    add-int v0, v2, v1

    .line 98
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->width:I

    add-int v0, v1, v2

    .line 99
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->height:I

    add-int v0, v1, v2

    .line 100
    return v0

    .end local v0    # "result":I
    :cond_1
    move v0, v1

    .line 95
    goto :goto_0

    .restart local v0    # "result":I
    :cond_2
    move v2, v1

    .line 96
    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NormalArticle [title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", pictureUrls="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->pictureUrls:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/forum/model/article/NormalArticle;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
