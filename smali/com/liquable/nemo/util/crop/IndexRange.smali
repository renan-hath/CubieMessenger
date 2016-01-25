.class public final Lcom/liquable/nemo/util/crop/IndexRange;
.super Ljava/lang/Object;
.source "IndexRange.java"


# instance fields
.field public begin:I

.field public end:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput v0, p0, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    .line 24
    iput v0, p0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    .line 25
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "beginRange"    # I
    .param p2, "endRange"    # I

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput p1, p0, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    .line 29
    iput p2, p0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    .line 30
    return-void
.end method


# virtual methods
.method public isEmpty()Z
    .locals 2

    .prologue
    .line 33
    iget v0, p0, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    iget v1, p0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(II)V
    .locals 0
    .param p1, "begin"    # I
    .param p2, "end"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    .line 38
    iput p2, p0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    .line 39
    return-void
.end method

.method public size()I
    .locals 2

    .prologue
    .line 42
    iget v0, p0, Lcom/liquable/nemo/util/crop/IndexRange;->end:I

    iget v1, p0, Lcom/liquable/nemo/util/crop/IndexRange;->begin:I

    sub-int/2addr v0, v1

    return v0
.end method
