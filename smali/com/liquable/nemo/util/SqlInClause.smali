.class public Lcom/liquable/nemo/util/SqlInClause;
.super Ljava/lang/Object;
.source "SqlInClause.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static makePlaceholders(I)Ljava/lang/String;
    .locals 4
    .param p0, "len"    # I

    .prologue
    .line 5
    const/4 v2, 0x1

    if-ge p0, v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "No placeholders"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    mul-int/lit8 v2, p0, 0x2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 9
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_1

    .line 11
    const-string/jumbo v2, ",?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
