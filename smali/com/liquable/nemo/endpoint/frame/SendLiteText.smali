.class public final Lcom/liquable/nemo/endpoint/frame/SendLiteText;
.super Ljava/lang/Object;
.source "SendLiteText.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x281fa1e0293860eL


# instance fields
.field private final data:Ljava/lang/String;

.field private final destination:Lcom/liquable/nemo/endpoint/frame/Destination;

.field private final messageId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/liquable/nemo/endpoint/frame/Destination;Ljava/lang/String;)V
    .locals 4
    .param p1, "messageId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "messageId"
        .end annotation
    .end param
    .param p2, "destination"    # Lcom/liquable/nemo/endpoint/frame/Destination;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "destination"
        .end annotation
    .end param
    .param p3, "data"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "data"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-eqz p2, :cond_0

    move v0, v1

    :goto_0
    const-string/jumbo v3, "destination should not be null"

    invoke-static {v0, v3}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 35
    if-eqz p1, :cond_1

    :goto_1
    const-string/jumbo v0, "messageId should not be null"

    invoke-static {v1, v0}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 36
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    .line 38
    iput-object p3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    .line 39
    return-void

    :cond_0
    move v0, v2

    .line 34
    goto :goto_0

    :cond_1
    move v1, v2

    .line 35
    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 43
    if-ne p0, p1, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v1

    .line 46
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 47
    goto :goto_0

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 50
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 52
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;

    .line 53
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/SendLiteText;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    if-eqz v3, :cond_5

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-nez v3, :cond_6

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-eqz v3, :cond_7

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/endpoint/frame/Destination;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 72
    goto :goto_0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Lcom/liquable/nemo/endpoint/frame/Destination;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    return-object v0
.end method

.method public getMessageId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 91
    const/16 v0, 0x1f

    .line 92
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 93
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 94
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 95
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    if-nez v4, :cond_2

    :goto_2
    add-int v1, v2, v3

    .line 96
    return v1

    .line 93
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    .line 94
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/Destination;->hashCode()I

    move-result v2

    goto :goto_1

    .line 95
    :cond_2
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_2
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SendLiteText [data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", destination="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->destination:Lcom/liquable/nemo/endpoint/frame/Destination;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/SendLiteText;->messageId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
