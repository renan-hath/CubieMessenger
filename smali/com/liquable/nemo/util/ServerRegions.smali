.class public Lcom/liquable/nemo/util/ServerRegions;
.super Ljava/lang/Object;
.source "ServerRegions.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/ServerRegions$Server;,
        Lcom/liquable/nemo/util/ServerRegions$Builder;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x740284256e644877L


# instance fields
.field private final regions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "regions"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 113
    .local p1, "regions":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    .line 115
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 119
    if-ne p0, p1, :cond_1

    .line 136
    :cond_0
    :goto_0
    return v1

    .line 122
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 123
    goto :goto_0

    .line 125
    :cond_2
    instance-of v3, p1, Lcom/liquable/nemo/util/ServerRegions;

    if-nez v3, :cond_3

    move v1, v2

    .line 126
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 128
    check-cast v0, Lcom/liquable/nemo/util/ServerRegions;

    .line 129
    .local v0, "other":Lcom/liquable/nemo/util/ServerRegions;
    iget-object v3, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    if-nez v3, :cond_4

    .line 130
    iget-object v3, v0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    if-eqz v3, :cond_0

    move v1, v2

    .line 131
    goto :goto_0

    .line 133
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    iget-object v4, v0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    invoke-interface {v3, v4}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 134
    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 141
    const/16 v0, 0x1f

    .line 142
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 143
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 144
    return v1

    .line 143
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    move-result v2

    goto :goto_0
.end method

.method public isEmpty()Z
    .locals 4
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 149
    iget-object v1, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    .line 158
    :goto_0
    return v1

    .line 153
    :cond_0
    invoke-virtual {p0}, Lcom/liquable/nemo/util/ServerRegions;->regionEntries()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    const/4 v1, 0x0

    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Lcom/liquable/nemo/util/ServerRegions$Server;>;>;"
    :cond_2
    move v1, v2

    .line 158
    goto :goto_0
.end method

.method public regionEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/util/ServerRegions$Server;",
            ">;>;>;"
        }
    .end annotation

    .annotation runtime Lorg/codehaus/jackson/annotate/JsonIgnore;
    .end annotation

    .prologue
    .line 163
    iget-object v0, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServerRegions [regions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/util/ServerRegions;->regions:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
