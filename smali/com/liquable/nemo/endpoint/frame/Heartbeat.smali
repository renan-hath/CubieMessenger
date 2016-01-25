.class public final Lcom/liquable/nemo/endpoint/frame/Heartbeat;
.super Ljava/lang/Object;
.source "Heartbeat.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6258db8229202411L


# instance fields
.field private final id:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 28
    if-ne p0, p1, :cond_1

    .line 45
    :cond_0
    :goto_0
    return v1

    .line 31
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 32
    goto :goto_0

    .line 34
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 35
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 37
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;

    .line 38
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/Heartbeat;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    if-nez v3, :cond_4

    .line 39
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 40
    goto :goto_0

    .line 42
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 43
    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 54
    const/16 v0, 0x1f

    .line 55
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 56
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 57
    return v1

    .line 56
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Heartbeat [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Heartbeat;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
