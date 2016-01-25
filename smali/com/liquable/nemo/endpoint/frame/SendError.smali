.class public final Lcom/liquable/nemo/endpoint/frame/SendError;
.super Ljava/lang/Object;
.source "SendError.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17ac67ab6845f24dL


# instance fields
.field private final sendText:Lcom/liquable/nemo/endpoint/frame/SendText;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/endpoint/frame/SendText;)V
    .locals 2
    .param p1, "sendText"    # Lcom/liquable/nemo/endpoint/frame/SendText;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "sendText"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "sendText should not be null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    .line 29
    return-void

    .line 27
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 33
    if-ne p0, p1, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 37
    goto :goto_0

    .line 39
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/endpoint/frame/SendError;

    if-nez v3, :cond_3

    move v1, v2

    .line 40
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 42
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/SendError;

    .line 43
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/SendError;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    if-nez v3, :cond_4

    .line 44
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    if-eqz v3, :cond_0

    move v1, v2

    .line 45
    goto :goto_0

    .line 47
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v3, v4}, Lcom/liquable/nemo/endpoint/frame/SendText;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public getSendText()Lcom/liquable/nemo/endpoint/frame/SendText;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 59
    const/16 v0, 0x1f

    .line 60
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 61
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 62
    return v1

    .line 61
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v2}, Lcom/liquable/nemo/endpoint/frame/SendText;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SendError [sendText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/SendError;->sendText:Lcom/liquable/nemo/endpoint/frame/SendText;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
