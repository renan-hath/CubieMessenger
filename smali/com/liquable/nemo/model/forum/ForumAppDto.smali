.class public Lcom/liquable/nemo/model/forum/ForumAppDto;
.super Ljava/lang/Object;
.source "ForumAppDto.java"

# interfaces
.implements Lcom/liquable/nemo/rpc/IDataTransferObject;


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->CLASS:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x4f0029772d57c953L


# instance fields
.field private final androidPackageNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final appName:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final iosAppleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final iosProcessNames:Ljava/util/List;
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
.method public constructor <init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "androidPackageNames"
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iosAppleIds"
        .end annotation
    .end param
    .param p4, "appName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "appName"
        .end annotation
    .end param
    .param p5    # Ljava/util/List;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "iosProcessNames"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
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
    .line 33
    .local p2, "androidPackageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "iosAppleIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "iosProcessNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    .line 36
    iput-object p3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    .line 37
    iput-object p4, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    .line 38
    iput-object p5, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    .line 39
    return-void
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

    .line 88
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
    check-cast v0, Lcom/liquable/nemo/model/forum/ForumAppDto;

    .line 53
    .local v0, "other":Lcom/liquable/nemo/model/forum/ForumAppDto;
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    if-nez v3, :cond_4

    .line 54
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    if-eqz v3, :cond_5

    move v1, v2

    .line 55
    goto :goto_0

    .line 57
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 58
    goto :goto_0

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    if-nez v3, :cond_6

    .line 61
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    if-eqz v3, :cond_7

    move v1, v2

    .line 62
    goto :goto_0

    .line 64
    :cond_6
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    move v1, v2

    .line 65
    goto :goto_0

    .line 67
    :cond_7
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    if-nez v3, :cond_8

    .line 68
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    if-eqz v3, :cond_9

    move v1, v2

    .line 69
    goto :goto_0

    .line 71
    :cond_8
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    move v1, v2

    .line 72
    goto :goto_0

    .line 74
    :cond_9
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    if-nez v3, :cond_a

    .line 75
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    if-eqz v3, :cond_b

    move v1, v2

    .line 76
    goto :goto_0

    .line 78
    :cond_a
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    move v1, v2

    .line 79
    goto :goto_0

    .line 81
    :cond_b
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    if-nez v3, :cond_c

    .line 82
    iget-object v3, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    if-eqz v3, :cond_0

    move v1, v2

    .line 83
    goto :goto_0

    .line 85
    :cond_c
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    iget-object v4, v0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 86
    goto/16 :goto_0
.end method

.method public getAndroidPackageNames()Ljava/util/List;
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
    .line 92
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    return-object v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getIosAppleIds()Ljava/util/List;
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
    .line 104
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    return-object v0
.end method

.method public getIosProcessNames()Ljava/util/List;
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
    .line 108
    iget-object v0, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 113
    const/16 v0, 0x1f

    .line 114
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 115
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 116
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    add-int v1, v4, v2

    .line 117
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    if-nez v2, :cond_2

    move v2, v3

    :goto_2
    add-int v1, v4, v2

    .line 118
    mul-int/lit8 v4, v1, 0x1f

    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    if-nez v2, :cond_3

    move v2, v3

    :goto_3
    add-int v1, v4, v2

    .line 119
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    if-nez v4, :cond_4

    :goto_4
    add-int v1, v2, v3

    .line 120
    return v1

    .line 115
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_1

    .line 117
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_2

    .line 118
    :cond_3
    iget-object v2, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3

    .line 119
    :cond_4
    iget-object v3, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    goto :goto_4
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ForumAppDto [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", androidPackageNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->androidPackageNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iosAppleIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosAppleIds:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", appName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->appName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", iosProcessNames="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/model/forum/ForumAppDto;->iosProcessNames:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
