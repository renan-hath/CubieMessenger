.class public final Lcom/liquable/nemo/endpoint/frame/Destination;
.super Ljava/lang/Object;
.source "Destination.java"

# interfaces
.implements Lcom/liquable/nemo/endpoint/frame/IEpFrame;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7dcf307e4b888d58L


# instance fields
.field private final only:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final topic:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "topic"
        .end annotation
    .end param
    .param p2    # Ljava/util/Set;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "only"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 47
    .local p2, "only":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "topic should not be null"

    invoke-static {v0, v1}, Lcom/liquable/util/DesignContract;->preCondition(ZLjava/lang/String;)V

    .line 49
    iput-object p1, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    .line 50
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    .line 52
    return-void

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_1
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 56
    if-ne p0, p1, :cond_1

    .line 80
    :cond_0
    :goto_0
    return v1

    .line 59
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 63
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 65
    check-cast v0, Lcom/liquable/nemo/endpoint/frame/Destination;

    .line 66
    .local v0, "other":Lcom/liquable/nemo/endpoint/frame/Destination;
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    if-nez v3, :cond_4

    .line 67
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    if-eqz v3, :cond_5

    move v1, v2

    .line 68
    goto :goto_0

    .line 70
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 71
    goto :goto_0

    .line 73
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 74
    iget-object v3, v0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    if-eqz v3, :cond_0

    move v1, v2

    .line 75
    goto :goto_0

    .line 77
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 78
    goto :goto_0
.end method

.method public getOnly()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    return-object v0
.end method

.method public getTopic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    return-object v0
.end method

.method public hasOnly()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 93
    const/16 v0, 0x1f

    .line 94
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 95
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 96
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 97
    return v1

    .line 95
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->hashCode()I

    move-result v2

    goto :goto_0

    .line 96
    :cond_1
    iget-object v3, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Destination [topic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->topic:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", only="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/endpoint/frame/Destination;->only:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
