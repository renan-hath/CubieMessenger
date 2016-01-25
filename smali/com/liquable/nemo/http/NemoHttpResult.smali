.class public final Lcom/liquable/nemo/http/NemoHttpResult;
.super Ljava/lang/Object;
.source "NemoHttpResult.java"


# instance fields
.field private final content:Ljava/lang/String;

.field private final responseCode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "responseCode"    # I

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    .line 13
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 17
    if-ne p0, p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 20
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 21
    goto :goto_0

    .line 23
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 24
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 26
    check-cast v0, Lcom/liquable/nemo/http/NemoHttpResult;

    .line 27
    .local v0, "other":Lcom/liquable/nemo/http/NemoHttpResult;
    iget-object v3, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 28
    iget-object v3, v0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 29
    goto :goto_0

    .line 31
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 32
    goto :goto_0

    .line 35
    :cond_5
    iget v3, p0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    iget v4, v0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 36
    goto :goto_0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 47
    const/16 v0, 0x1f

    .line 48
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 49
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 50
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    add-int v1, v2, v3

    .line 51
    return v1

    .line 49
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isValidResponseCode()Z
    .locals 2

    .prologue
    .line 55
    iget v0, p0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    const/16 v1, 0xc8

    if-lt v0, v1, :cond_0

    iget v0, p0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    const/16 v1, 0x190

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isValidWithContent()Z
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/liquable/nemo/http/NemoHttpResult;->isValidResponseCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "NemoHttpResult [content="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/http/NemoHttpResult;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", responseCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/http/NemoHttpResult;->responseCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
