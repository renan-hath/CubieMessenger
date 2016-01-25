.class public final Lcom/liquable/nemo/util/crop/LongSparseArray;
.super Ljava/lang/Object;
.source "LongSparseArray.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/LongSparseArray$ArrayUtils;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DELETED:Ljava/lang/Object;


# instance fields
.field private mGarbage:Z

.field private mKeys:[J

.field private mSize:I

.field private mValues:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/LongSparseArray;->DELETED:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 190
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lcom/liquable/nemo/util/crop/LongSparseArray;-><init>(I)V

    .line 191
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "initialCapacity"    # I

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    const/4 v1, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    .line 198
    invoke-static {p1}, Lcom/liquable/nemo/util/crop/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result p1

    .line 200
    new-array v0, p1, [J

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    .line 201
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 202
    iput v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    .line 203
    return-void
.end method

.method private static binarySearch([JIIJ)I
    .locals 5
    .param p0, "a"    # [J
    .param p1, "start"    # I
    .param p2, "len"    # I
    .param p3, "key"    # J

    .prologue
    .line 155
    add-int v1, p1, p2

    .local v1, "high":I
    add-int/lit8 v2, p1, -0x1

    .line 157
    .local v2, "low":I
    :goto_0
    sub-int v3, v1, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 158
    add-int v3, v1, v2

    div-int/lit8 v0, v3, 0x2

    .line 160
    .local v0, "guess":I
    aget-wide v3, p0, v0

    cmp-long v3, v3, p3

    if-gez v3, :cond_0

    .line 161
    move v2, v0

    goto :goto_0

    .line 163
    :cond_0
    move v1, v0

    goto :goto_0

    .line 167
    .end local v0    # "guess":I
    :cond_1
    add-int v3, p1, p2

    if-ne v1, v3, :cond_3

    .line 168
    add-int v3, p1, p2

    xor-int/lit8 v1, v3, -0x1

    .line 172
    .end local v1    # "high":I
    :cond_2
    :goto_1
    return v1

    .line 169
    .restart local v1    # "high":I
    :cond_3
    aget-wide v3, p0, v1

    cmp-long v3, v3, p3

    if-eqz v3, :cond_2

    .line 172
    xor-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private checkIntegrity()V
    .locals 6

    .prologue
    .line 241
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    if-ge v0, v2, :cond_2

    .line 242
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    aget-wide v2, v2, v0

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    add-int/lit8 v5, v0, -0x1

    aget-wide v4, v4, v5

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    .line 243
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    iget v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    if-ge v1, v2, :cond_0

    .line 244
    const-string/jumbo v2, "FAIL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    aget-wide v4, v4, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " -> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 247
    :cond_0
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    throw v2

    .line 241
    .end local v1    # "j":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_2
    return-void
.end method

.method private gc()V
    .locals 8

    .prologue
    .line 284
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    iget v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    .line 285
    .local v2, "n":I
    const/4 v3, 0x0

    .line 286
    .local v3, "o":I
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    .line 287
    .local v1, "keys":[J
    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 289
    .local v5, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_2

    .line 290
    aget-object v4, v5, v0

    .line 292
    .local v4, "val":Ljava/lang/Object;
    sget-object v6, Lcom/liquable/nemo/util/crop/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v4, v6, :cond_1

    .line 293
    if-eq v0, v3, :cond_0

    .line 294
    aget-wide v6, v1, v0

    aput-wide v6, v1, v3

    .line 295
    aput-object v4, v5, v3

    .line 298
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 289
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 302
    .end local v4    # "val":Ljava/lang/Object;
    :cond_2
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    .line 303
    iput v3, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    .line 306
    return-void
.end method


# virtual methods
.method public append(JLjava/lang/Object;)V
    .locals 7
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 210
    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    add-int/lit8 v5, v5, -0x1

    aget-wide v4, v4, v5

    cmp-long v4, p1, v4

    if-gtz v4, :cond_0

    .line 211
    invoke-virtual {p0, p1, p2, p3}, Lcom/liquable/nemo/util/crop/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 237
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-boolean v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_1

    .line 216
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 219
    :cond_1
    iget v3, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    .line 220
    .local v3, "pos":I
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    array-length v4, v4

    if-lt v3, v4, :cond_2

    .line 221
    add-int/lit8 v4, v3, 0x1

    invoke-static {v4}, Lcom/liquable/nemo/util/crop/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result v0

    .line 223
    .local v0, "n":I
    new-array v1, v0, [J

    .line 224
    .local v1, "nkeys":[J
    new-array v2, v0, [Ljava/lang/Object;

    .line 227
    .local v2, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 230
    iput-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    .line 231
    iput-object v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 234
    .end local v0    # "n":I
    .end local v1    # "nkeys":[J
    .end local v2    # "nvalues":[Ljava/lang/Object;
    :cond_2
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v3

    .line 235
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    .line 236
    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    goto :goto_0
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    const/4 v4, 0x0

    .line 256
    iget v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    .line 257
    .local v1, "n":I
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 259
    .local v2, "values":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 260
    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 259
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    :cond_0
    iput v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    .line 264
    iput-boolean v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    .line 265
    return-void
.end method

.method public delete(J)V
    .locals 4
    .param p1, "key"    # J

    .prologue
    .line 271
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 273
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 274
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/liquable/nemo/util/crop/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-eq v1, v2, :cond_0

    .line 275
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    sget-object v2, Lcom/liquable/nemo/util/crop/LongSparseArray;->DELETED:Ljava/lang/Object;

    aput-object v2, v1, v0

    .line 276
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    .line 279
    :cond_0
    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TE;"
        }
    .end annotation

    .prologue
    .line 313
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(JLjava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)TE;"
        }
    .end annotation

    .prologue
    .line 322
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    .local p3, "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    const/4 v2, 0x0

    iget v3, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    invoke-static {v1, v2, v3, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 324
    .local v0, "i":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    sget-object v2, Lcom/liquable/nemo/util/crop/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v1, v2, :cond_1

    .line 327
    .end local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_0
    :goto_0
    return-object p3

    .restart local p3    # "valueIfKeyNotFound":Ljava/lang/Object;, "TE;"
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object p3, v1, v0

    goto :goto_0
.end method

.method public indexOfKey(J)I
    .locals 3
    .param p1, "key"    # J

    .prologue
    .line 336
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 337
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    const/4 v1, 0x0

    iget v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    return v0
.end method

.method public indexOfValue(Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)I"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v1, :cond_0

    .line 351
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 354
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    if-ge v0, v1, :cond_2

    .line 355
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_1

    .line 360
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 354
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public keyAt(I)J
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 368
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 369
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 8
    .param p1, "key"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JTE;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    .local p3, "value":Ljava/lang/Object;, "TE;"
    const/4 v6, 0x0

    .line 380
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->binarySearch([JIIJ)I

    move-result v0

    .line 382
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 383
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 424
    :goto_0
    return-void

    .line 385
    :cond_0
    xor-int/lit8 v0, v0, -0x1

    .line 387
    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    if-ge v0, v4, :cond_1

    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v4, v4, v0

    sget-object v5, Lcom/liquable/nemo/util/crop/LongSparseArray;->DELETED:Ljava/lang/Object;

    if-ne v4, v5, :cond_1

    .line 388
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 389
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    goto :goto_0

    .line 393
    :cond_1
    iget-boolean v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_2

    .line 394
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 397
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    iget v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    invoke-static {v4, v6, v5, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->binarySearch([JIIJ)I

    move-result v4

    xor-int/lit8 v0, v4, -0x1

    .line 400
    :cond_2
    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    array-length v5, v5

    if-lt v4, v5, :cond_3

    .line 401
    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Lcom/liquable/nemo/util/crop/LongSparseArray$ArrayUtils;->idealIntArraySize(I)I

    move-result v1

    .line 403
    .local v1, "n":I
    new-array v2, v1, [J

    .line 404
    .local v2, "nkeys":[J
    new-array v3, v1, [Ljava/lang/Object;

    .line 407
    .local v3, "nvalues":[Ljava/lang/Object;
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    array-length v5, v5

    invoke-static {v4, v6, v2, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 408
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    array-length v5, v5

    invoke-static {v4, v6, v3, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 410
    iput-object v2, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    .line 411
    iput-object v3, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    .line 414
    .end local v1    # "n":I
    .end local v2    # "nkeys":[J
    .end local v3    # "nvalues":[Ljava/lang/Object;
    :cond_3
    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    sub-int/2addr v4, v0

    if-eqz v4, :cond_4

    .line 416
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    iget-object v5, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x1

    iget v7, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    sub-int/2addr v7, v0

    invoke-static {v4, v0, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 420
    :cond_4
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mKeys:[J

    aput-wide p1, v4, v0

    .line 421
    iget-object v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p3, v4, v0

    .line 422
    iget v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    goto/16 :goto_0
.end method

.method public remove(J)V
    .locals 0
    .param p1, "key"    # J

    .prologue
    .line 430
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/util/crop/LongSparseArray;->delete(J)V

    .line 431
    return-void
.end method

.method public setValueAt(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .prologue
    .line 438
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    .local p2, "value":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aput-object p2, v0, p1

    .line 443
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 449
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 453
    :cond_0
    iget v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mSize:I

    return v0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 462
    .local p0, "this":Lcom/liquable/nemo/util/crop/LongSparseArray;, "Lcom/liquable/nemo/util/crop/LongSparseArray<TE;>;"
    iget-boolean v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mGarbage:Z

    if-eqz v0, :cond_0

    .line 463
    invoke-direct {p0}, Lcom/liquable/nemo/util/crop/LongSparseArray;->gc()V

    .line 466
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/LongSparseArray;->mValues:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
