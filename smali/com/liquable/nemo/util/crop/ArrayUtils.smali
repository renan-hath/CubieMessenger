.class public final Lcom/liquable/nemo/util/crop/ArrayUtils;
.super Ljava/lang/Object;
.source "ArrayUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addAll([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "first"    # [Ljava/lang/String;
    .param p1, "second"    # [Ljava/lang/String;

    .prologue
    .line 22
    if-nez p0, :cond_1

    if-nez p1, :cond_1

    .line 23
    const/4 p1, 0x0

    .line 40
    .end local p1    # "second":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 25
    .restart local p1    # "second":[Ljava/lang/String;
    :cond_1
    if-eqz p0, :cond_0

    .line 28
    if-nez p1, :cond_2

    move-object p1, p0

    .line 29
    goto :goto_0

    .line 31
    :cond_2
    array-length v2, p0

    .line 32
    .local v2, "numFirst":I
    array-length v3, p1

    .line 33
    .local v3, "numSecond":I
    add-int v4, v2, v3

    new-array v1, v4, [Ljava/lang/String;

    .line 34
    .local v1, "newArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_3

    .line 35
    aget-object v4, p0, v0

    aput-object v4, v1, v0

    .line 34
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 37
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v3, :cond_4

    .line 38
    add-int v4, v2, v0

    aget-object v5, p1, v0

    aput-object v5, v1, v4

    .line 37
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    move-object p1, v1

    .line 40
    goto :goto_0
.end method

.method public static clear([Ljava/lang/Object;)V
    .locals 3
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 44
    array-length v1, p0

    .line 45
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 46
    const/4 v2, 0x0

    aput-object v2, p0, v0

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    return-void
.end method

.method public static final computeSortedIntersection(Ljava/util/ArrayList;Ljava/util/ArrayList;ILjava/util/ArrayList;[Lcom/liquable/nemo/util/crop/MediaItem;)V
    .locals 11
    .param p2, "maxSize"    # I
    .param p4, "hash"    # [Lcom/liquable/nemo/util/crop/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;[",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    .local p0, "firstList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .local p1, "secondList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    .local p3, "intersectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    array-length v7, p4

    add-int/lit8 v5, v7, -0x1

    .line 58
    .local v5, "mask":I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    array-length v8, p4

    mul-int/lit8 v8, v8, 0x2

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 59
    .local v6, "numItemsToHash":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v6, :cond_1

    .line 60
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 61
    .local v4, "item":Lcom/liquable/nemo/util/crop/MediaItem;
    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v7

    and-int/2addr v7, v5

    aput-object v4, p4, v7

    .line 59
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 67
    .end local v4    # "item":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 68
    .local v1, "firstListSize":I
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_6

    .line 69
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 70
    .local v0, "firstListItem":Lcom/liquable/nemo/util/crop/MediaItem;
    if-nez v0, :cond_3

    .line 68
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_3
    if-eqz p4, :cond_7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v7

    and-int/2addr v7, v5

    aget-object v2, p4, v7

    .line 74
    .local v2, "hashItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :goto_2
    if-eqz v2, :cond_2

    iget-wide v7, v2, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    const-wide/16 v9, -0x1

    cmp-long v7, v7, v9

    if-eqz v7, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v8

    if-eq v7, v8, :cond_5

    :cond_4
    invoke-static {p1, v0}, Lcom/liquable/nemo/util/crop/ArrayUtils;->contains(Ljava/util/ArrayList;Lcom/liquable/nemo/util/crop/MediaItem;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 76
    :cond_5
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    add-int/lit8 p2, p2, -0x1

    if-nez p2, :cond_2

    .line 84
    .end local v0    # "firstListItem":Lcom/liquable/nemo/util/crop/MediaItem;
    .end local v2    # "hashItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_6
    const/4 v7, 0x0

    invoke-static {p4, v7}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 85
    return-void

    .line 73
    .restart local v0    # "firstListItem":Lcom/liquable/nemo/util/crop/MediaItem;
    :cond_7
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static final contains(Ljava/util/ArrayList;Lcom/liquable/nemo/util/crop/MediaItem;)Z
    .locals 8
    .param p1, "item"    # Lcom/liquable/nemo/util/crop/MediaItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ">;",
            "Lcom/liquable/nemo/util/crop/MediaItem;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/liquable/nemo/util/crop/MediaItem;>;"
    const/4 v3, 0x0

    .line 88
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 89
    .local v1, "numItems":I
    iget-wide v4, p1, Lcom/liquable/nemo/util/crop/MediaItem;->mId:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-nez v4, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v3

    .line 92
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 93
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/liquable/nemo/util/crop/MediaItem;

    .line 94
    .local v2, "thisItem":Lcom/liquable/nemo/util/crop/MediaItem;
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 95
    const/4 v3, 0x1

    goto :goto_0

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static final contains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 102
    if-nez p1, :cond_1

    .line 111
    :cond_0
    :goto_0
    return v2

    .line 105
    :cond_1
    array-length v1, p0

    .line 106
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 107
    aget-object v3, p0, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    const/4 v2, 0x1

    goto :goto_0

    .line 106
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
