.class public final Lcom/liquable/nemo/util/crop/Deque;
.super Ljava/lang/Object;
.source "Deque.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10


# instance fields
.field private mArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mHead:I

.field private mTail:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 22
    iput v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    const/4 v0, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 22
    iput v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 32
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 33
    return-void
.end method

.method private expand()V
    .locals 7

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    const/4 v6, 0x0

    .line 74
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 75
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    iget v2, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 76
    .local v2, "head":I
    array-length v1, v0

    .line 77
    .local v1, "capacity":I
    sub-int v5, v1, v2

    .line 78
    .local v5, "rightSize":I
    shl-int/lit8 v4, v1, 0x1

    .line 79
    .local v4, "newCapacity":I
    new-array v3, v4, [Ljava/lang/Object;

    .line 80
    .local v3, "newArray":[Ljava/lang/Object;
    invoke-static {v0, v2, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 81
    invoke-static {v0, v6, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 82
    check-cast v3, [Ljava/lang/Object;

    .end local v3    # "newArray":[Ljava/lang/Object;
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 83
    iput v6, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 84
    iput v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 85
    return-void
.end method


# virtual methods
.method public addFirst(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 37
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    iget v2, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    add-int/lit8 v2, v2, -0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    .line 38
    .local v1, "head":I
    iput v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 39
    aput-object p1, v0, v1

    .line 40
    iget v2, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    if-ne v1, v2, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/Deque;->expand()V

    .line 43
    :cond_0
    return-void
.end method

.method public addLast(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 47
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    iget v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 48
    .local v1, "tail":I
    aput-object p1, v0, v1

    .line 49
    add-int/lit8 v2, v1, 0x1

    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    and-int v1, v2, v3

    .line 50
    iput v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 51
    iget v2, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    if-ne v2, v1, :cond_0

    .line 52
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/Deque;->expand()V

    .line 54
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 6

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    const/4 v5, 0x0

    .line 57
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 58
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    iget v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 59
    .local v1, "head":I
    iget v3, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 60
    .local v3, "tail":I
    if-eq v1, v3, :cond_1

    .line 61
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .line 63
    .local v2, "mask":I
    :cond_0
    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 64
    add-int/lit8 v4, v1, 0x1

    and-int v1, v4, v2

    .line 65
    if-ne v1, v3, :cond_0

    .line 66
    iput v5, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 67
    iput v5, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    .line 69
    .end local v2    # "mask":I
    :cond_1
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 88
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 89
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Lcom/liquable/nemo/util/crop/Deque;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 90
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 92
    :cond_0
    iget v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    add-int/2addr v1, p1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    and-int/2addr v1, v2

    aget-object v1, v0, v1

    return-object v1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .line 96
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    iget v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    iget v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 101
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    iget v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    .line 102
    .local v1, "head":I
    aget-object v2, v0, v1

    .line 103
    .local v2, "result":Ljava/lang/Object;, "TE;"
    if-nez v2, :cond_0

    move-object v2, v3

    .line 108
    .end local v2    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v2

    .line 106
    .restart local v2    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    aput-object v3, v0, v1

    .line 107
    add-int/lit8 v3, v1, 0x1

    array-length v4, v0

    add-int/lit8 v4, v4, -0x1

    and-int/2addr v3, v4

    iput v3, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    goto :goto_0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    const/4 v3, 0x0

    .line 112
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    .line 113
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    iget v4, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    add-int/lit8 v4, v4, -0x1

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    and-int v2, v4, v5

    .line 114
    .local v2, "tail":I
    aget-object v1, v0, v2

    .line 115
    .local v1, "result":Ljava/lang/Object;, "TE;"
    if-nez v1, :cond_0

    move-object v1, v3

    .line 120
    .end local v1    # "result":Ljava/lang/Object;, "TE;"
    :goto_0
    return-object v1

    .line 118
    .restart local v1    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    aput-object v3, v0, v2

    .line 119
    iput v2, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    goto :goto_0
.end method

.method public size()I
    .locals 2

    .prologue
    .line 124
    .local p0, "this":Lcom/liquable/nemo/util/crop/Deque;, "Lcom/liquable/nemo/util/crop/Deque<TE;>;"
    iget v0, p0, Lcom/liquable/nemo/util/crop/Deque;->mTail:I

    iget v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mHead:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/Deque;->mArray:[Ljava/lang/Object;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v0, v1

    return v0
.end method
