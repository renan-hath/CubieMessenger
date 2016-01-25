.class public final Lcom/liquable/nemo/endpoint/frame/ErrorResponse;
.super Ljava/lang/Object;
.source "ErrorResponse.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3b5f43b626fa2523L


# instance fields
.field private final exception:Ljava/lang/String;

.field private final message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "exception"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "exception"
        .end annotation
    .end param
    .param p2, "message"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "message"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    .line 24
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Throwable;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    .line 29
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 34
    if-ne p0, p1, :cond_1

    .line 58
    :cond_0
    :goto_0
    return v1

    .line 37
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;

    if-nez v3, :cond_3

    move v1, v2

    .line 41
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 43
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;

    .line 44
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/ErrorResponse;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 45
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 46
    goto :goto_0

    .line 48
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 49
    goto :goto_0

    .line 51
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 52
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 53
    goto :goto_0

    .line 55
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 56
    goto :goto_0
.end method

.method public getException()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 71
    const/16 v0, 0x1f

    .line 72
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 73
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 74
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 75
    return v1

    .line 73
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 74
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ErrorResponse [exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->exception:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/ErrorResponse;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
