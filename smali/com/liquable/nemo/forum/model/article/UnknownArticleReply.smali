.class public Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;
.super Ljava/lang/Object;
.source "UnknownArticleReply.java"

# interfaces
.implements Lcom/liquable/nemo/forum/model/article/IArticleReplyBody;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x2b4f24bcba3e14a3L


# instance fields
.field private raw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "raw"
        .end annotation
    .end param

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 18
    if-ne p0, p1, :cond_1

    .line 31
    :cond_0
    :goto_0
    return v1

    .line 21
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    .line 22
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 25
    check-cast v0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;

    .line 27
    .local v0, "that":Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;
    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 28
    goto :goto_0

    .line 27
    :cond_4
    iget-object v3, v0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0
    .param p1, "raw"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/liquable/nemo/forum/model/article/UnknownArticleReply;->raw:Ljava/lang/String;

    .line 45
    return-void
.end method
