.class public final Lcom/liquable/nemo/util/Dimension;
.super Ljava/lang/Object;
.source "Dimension.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final INVALID:Lcom/liquable/nemo/util/Dimension;

.field private static final serialVersionUID:J = 0x2b77f26c14bf32a1L


# instance fields
.field public final height:I

.field public final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    new-instance v0, Lcom/liquable/nemo/util/Dimension;

    invoke-direct {v0, v1, v1}, Lcom/liquable/nemo/util/Dimension;-><init>(II)V

    sput-object v0, Lcom/liquable/nemo/util/Dimension;->INVALID:Lcom/liquable/nemo/util/Dimension;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/liquable/nemo/util/Dimension;->width:I

    .line 17
    iput p2, p0, Lcom/liquable/nemo/util/Dimension;->height:I

    .line 18
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    if-ne p0, p1, :cond_1

    .line 38
    :cond_0
    :goto_0
    return v1

    .line 25
    :cond_1
    if-nez p1, :cond_2

    move v1, v2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 29
    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 31
    check-cast v0, Lcom/liquable/nemo/util/Dimension;

    .line 32
    .local v0, "other":Lcom/liquable/nemo/util/Dimension;
    iget v3, p0, Lcom/liquable/nemo/util/Dimension;->height:I

    iget v4, v0, Lcom/liquable/nemo/util/Dimension;->height:I

    if-eq v3, v4, :cond_4

    move v1, v2

    .line 33
    goto :goto_0

    .line 35
    :cond_4
    iget v3, p0, Lcom/liquable/nemo/util/Dimension;->width:I

    iget v4, v0, Lcom/liquable/nemo/util/Dimension;->width:I

    if-eq v3, v4, :cond_0

    move v1, v2

    .line 36
    goto :goto_0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/liquable/nemo/util/Dimension;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/liquable/nemo/util/Dimension;->width:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 51
    const/16 v0, 0x1f

    .line 52
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 53
    .local v1, "result":I
    iget v2, p0, Lcom/liquable/nemo/util/Dimension;->height:I

    add-int/lit8 v1, v2, 0x1f

    .line 54
    mul-int/lit8 v2, v1, 0x1f

    iget v3, p0, Lcom/liquable/nemo/util/Dimension;->width:I

    add-int v1, v2, v3

    .line 55
    return v1
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/liquable/nemo/util/Dimension;->width:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/liquable/nemo/util/Dimension;->height:I

    if-lez v0, :cond_0

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
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/util/Dimension;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/util/Dimension;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
