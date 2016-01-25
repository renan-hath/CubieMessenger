.class public final Lcom/liquable/util/Tuple;
.super Ljava/lang/Object;
.source "Tuple.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x16976e9a23f3b02cL


# instance fields
.field public final first:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TF;"
        }
    .end annotation
.end field

.field public final second:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;TS;)V"
        }
    .end annotation

    .prologue
    .line 12
    .local p0, "this":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<TF;TS;>;"
    .local p1, "first":Ljava/lang/Object;, "TF;"
    .local p2, "second":Ljava/lang/Object;, "TS;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    .line 14
    iput-object p2, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    .line 15
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<TF;TS;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 19
    if-ne p0, p1, :cond_1

    .line 43
    :cond_0
    :goto_0
    return v1

    .line 22
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 23
    goto :goto_0

    .line 25
    :cond_2
    instance-of v3, p1, Lcom/liquable/util/Tuple;

    if-nez v3, :cond_3

    move v1, v2

    .line 26
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 28
    check-cast v0, Lcom/liquable/util/Tuple;

    .line 29
    .local v0, "other":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<**>;"
    iget-object v3, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    if-nez v3, :cond_4

    .line 30
    iget-object v3, v0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    if-eqz v3, :cond_5

    move v1, v2

    .line 31
    goto :goto_0

    .line 33
    :cond_4
    iget-object v3, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    iget-object v4, v0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 34
    goto :goto_0

    .line 36
    :cond_5
    iget-object v3, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    if-nez v3, :cond_6

    .line 37
    iget-object v3, v0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    if-eqz v3, :cond_0

    move v1, v2

    .line 38
    goto :goto_0

    .line 40
    :cond_6
    iget-object v3, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    iget-object v4, v0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 41
    goto :goto_0
.end method

.method public final getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TF;"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<TF;TS;>;"
    iget-object v0, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    return-object v0
.end method

.method public final getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<TF;TS;>;"
    iget-object v0, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    return-object v0
.end method

.method public final hashCode()I
    .locals 5

    .prologue
    .local p0, "this":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<TF;TS;>;"
    const/4 v3, 0x0

    .line 56
    const/16 v0, 0x1f

    .line 57
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 58
    .local v1, "result":I
    iget-object v2, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 59
    mul-int/lit8 v2, v1, 0x1f

    iget-object v4, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    if-nez v4, :cond_1

    :goto_1
    add-int v1, v2, v3

    .line 60
    return v1

    .line 58
    :cond_0
    iget-object v2, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    .line 59
    :cond_1
    iget-object v3, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Lcom/liquable/util/Tuple;, "Lcom/liquable/util/Tuple<TF;TS;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/util/Tuple;->first:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/util/Tuple;->second:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
