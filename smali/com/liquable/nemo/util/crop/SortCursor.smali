.class public Lcom/liquable/nemo/util/crop/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SortCursor.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"

.field public static final TYPE_NUMERIC:I = 0x1

.field public static final TYPE_STRING:I


# instance fields
.field private final ROWCACHESIZE:I

.field private final mAscending:Z

.field private final mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private final mCursorCache:[I

.field private mCursorIndex:I

.field private final mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private final mObserver:Landroid/database/DataSetObserver;

.field private final mRowNumCache:[I

.field private final mSortColumns:[I

.field private final mType:I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;IZ)V
    .locals 10
    .param p1, "cursors"    # [Landroid/database/Cursor;
    .param p2, "sortcolumn"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "ascending"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 35
    const/16 v8, 0x40

    iput v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->ROWCACHESIZE:I

    .line 36
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mRowNumCache:[I

    .line 37
    const/16 v8, 0x40

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorCache:[I

    .line 39
    const/4 v8, -0x1

    iput v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mLastCacheHit:I

    .line 45
    new-instance v8, Lcom/liquable/nemo/util/crop/SortCursor$1;

    invoke-direct {v8, p0}, Lcom/liquable/nemo/util/crop/SortCursor$1;-><init>(Lcom/liquable/nemo/util/crop/SortCursor;)V

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 64
    iput-boolean p4, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mAscending:Z

    .line 65
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 66
    iput p3, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mType:I

    .line 67
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v5, v8

    .line 68
    .local v5, "length":I
    new-array v8, v5, [I

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mSortColumns:[I

    .line 69
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v5, :cond_1

    .line 70
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    if-nez v8, :cond_0

    .line 69
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :cond_0
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    iget-object v9, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    invoke-interface {v8, v9}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 75
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v3

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 77
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mSortColumns:[I

    iget-object v9, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v9, v9, v3

    invoke-interface {v9, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    aput v9, v8, v3

    goto :goto_1

    .line 79
    :cond_1
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 80
    if-nez p3, :cond_5

    .line 81
    const-string/jumbo v6, ""

    .line 82
    .local v6, "smallest":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_2
    if-ge v4, v5, :cond_d

    .line 83
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 82
    :cond_2
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 86
    :cond_3
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "current":Ljava/lang/String;
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual {v1, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v8

    if-gez v8, :cond_2

    .line 88
    :cond_4
    move-object v6, v1

    .line 89
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 90
    iput v4, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorIndex:I

    goto :goto_3

    .line 94
    .end local v1    # "current":Ljava/lang/String;
    .end local v4    # "j":I
    .end local v6    # "smallest":Ljava/lang/String;
    :cond_5
    if-eqz p4, :cond_7

    const-wide v6, 0x7fffffffffffffffL

    .line 95
    .local v6, "smallest":J
    :goto_4
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    if-ge v4, v5, :cond_d

    .line 96
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 95
    :cond_6
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 94
    .end local v4    # "j":I
    .end local v6    # "smallest":J
    :cond_7
    const-wide/high16 v6, -0x8000000000000000L

    goto :goto_4

    .line 99
    .restart local v4    # "j":I
    .restart local v6    # "smallest":J
    :cond_8
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iget-object v9, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mSortColumns:[I

    aget v9, v9, v4

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 100
    .local v1, "current":J
    if-eqz p4, :cond_b

    cmp-long v8, v1, v6

    if-gez v8, :cond_a

    const/4 v0, 0x1

    .line 101
    .local v0, "comparison":Z
    :goto_7
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v8, :cond_9

    if-eqz v0, :cond_6

    .line 102
    :cond_9
    move-wide v6, v1

    .line 103
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v8, v8, v4

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 104
    iput v4, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorIndex:I

    goto :goto_6

    .line 100
    .end local v0    # "comparison":Z
    :cond_a
    const/4 v0, 0x0

    goto :goto_7

    :cond_b
    cmp-long v8, v1, v6

    if-lez v8, :cond_c

    const/4 v0, 0x1

    goto :goto_7

    :cond_c
    const/4 v0, 0x0

    goto :goto_7

    .line 109
    .end local v1    # "current":J
    .end local v6    # "smallest":J
    :cond_d
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mRowNumCache:[I

    array-length v8, v8

    add-int/lit8 v3, v8, -0x1

    :goto_8
    if-ltz v3, :cond_e

    .line 110
    iget-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mRowNumCache:[I

    const/4 v9, -0x2

    aput v9, v8, v3

    .line 109
    add-int/lit8 v3, v3, -0x1

    goto :goto_8

    .line 112
    :cond_e
    const/16 v8, 0x40

    filled-new-array {v8, v5}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[I

    iput-object v8, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCurRowNumCache:[[I

    .line 113
    return-void
.end method

.method static synthetic access$002(Lcom/liquable/nemo/util/crop/SortCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/SortCursor;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mPos:I

    return p1
.end method

.method static synthetic access$102(Lcom/liquable/nemo/util/crop/SortCursor;I)I
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/util/crop/SortCursor;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 117
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 118
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 119
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 118
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 124
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    .prologue
    .line 128
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 129
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_0

    .line 129
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 133
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    goto :goto_1

    .line 135
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 139
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    if-eqz v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    .line 152
    :goto_0
    return-object v2

    .line 149
    :cond_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 150
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 151
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_1

    .line 152
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 150
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 155
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "No cursor that can return names"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getCount()I
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x0

    .line 162
    .local v0, "count":I
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v2, v3

    .line 163
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 164
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    .line 165
    iget-object v3, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v0, v3

    .line 163
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 168
    :cond_1
    return v0
.end method

.method public getCurrentCursorIndex()I
    .locals 1

    .prologue
    .line 172
    iget v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorIndex:I

    return v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 177
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 182
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 187
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "column"    # I

    .prologue
    .line 192
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 197
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 202
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isNull(I)Z
    .locals 1
    .param p1, "column"    # I

    .prologue
    .line 207
    iget-object v0, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    return v0
.end method

.method public onMove(II)Z
    .locals 16
    .param p1, "oldPosition"    # I
    .param p2, "newPosition"    # I

    .prologue
    .line 212
    move/from16 v0, p1

    move/from16 v1, p2

    if-ne v0, v1, :cond_0

    .line 213
    const/4 v13, 0x1

    .line 319
    :goto_0
    return v13

    .line 223
    :cond_0
    rem-int/lit8 v2, p2, 0x40

    .line 225
    .local v2, "cache_entry":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mRowNumCache:[I

    aget v13, v13, v2

    move/from16 v0, p2

    if-ne v13, v0, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorCache:[I

    aget v12, v13, v2

    .line 227
    .local v12, "which":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v12

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 228
    move-object/from16 v0, p0

    iput v12, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorIndex:I

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    if-nez v13, :cond_1

    .line 230
    const-string/jumbo v13, "SortCursor"

    const-string/jumbo v14, "onMove: cache results in a null cursor."

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v13, 0x0

    goto :goto_0

    .line 233
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCurRowNumCache:[[I

    aget-object v14, v14, v2

    aget v14, v14, v12

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 234
    move-object/from16 v0, p0

    iput v2, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mLastCacheHit:I

    .line 235
    const/4 v13, 0x1

    goto :goto_0

    .line 238
    .end local v12    # "which":I
    :cond_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 239
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v8, v13

    .line 241
    .local v8, "length":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mLastCacheHit:I

    if-ltz v13, :cond_4

    .line 242
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 243
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    if-nez v13, :cond_3

    .line 242
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 246
    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCurRowNumCache:[[I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mLastCacheHit:I

    aget-object v14, v14, v15

    aget v14, v14, v6

    invoke-interface {v13, v14}, Landroid/database/Cursor;->moveToPosition(I)Z

    goto :goto_2

    .line 250
    .end local v6    # "i":I
    :cond_4
    move/from16 v0, p2

    move/from16 v1, p1

    if-lt v0, v1, :cond_5

    const/4 v13, -0x1

    move/from16 v0, p1

    if-ne v0, v13, :cond_8

    .line 251
    :cond_5
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_3
    if-ge v6, v8, :cond_7

    .line 252
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    if-nez v13, :cond_6

    .line 251
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 255
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_4

    .line 257
    :cond_7
    const/16 p1, 0x0

    .line 259
    .end local v6    # "i":I
    :cond_8
    if-gez p1, :cond_9

    .line 260
    const/16 p1, 0x0

    .line 264
    :cond_9
    const/4 v11, -0x1

    .line 265
    .local v11, "smallestIdx":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mType:I

    if-nez v13, :cond_12

    .line 266
    move/from16 v6, p1

    .restart local v6    # "i":I
    :goto_5
    move/from16 v0, p2

    if-gt v6, v0, :cond_e

    .line 267
    const-string/jumbo v9, ""

    .line 268
    .local v9, "smallest":Ljava/lang/String;
    const/4 v11, -0x1

    .line 269
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6
    if-ge v7, v8, :cond_d

    .line 270
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    if-eqz v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 269
    :cond_a
    :goto_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 273
    :cond_b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mSortColumns:[I

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 274
    .local v4, "current":Ljava/lang/String;
    if-ltz v11, :cond_c

    if-eqz v4, :cond_c

    invoke-virtual {v4, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v13

    if-gez v13, :cond_a

    .line 275
    :cond_c
    move-object v9, v4

    .line 276
    move v11, v7

    goto :goto_7

    .line 279
    .end local v4    # "current":Ljava/lang/String;
    :cond_d
    move/from16 v0, p2

    if-ne v6, v0, :cond_10

    .line 309
    .end local v7    # "j":I
    .end local v9    # "smallest":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 310
    move-object/from16 v0, p0

    iput v11, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorIndex:I

    .line 311
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mRowNumCache:[I

    aput p2, v13, v2

    .line 312
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursorCache:[I

    aput v11, v13, v2

    .line 313
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v8, :cond_1c

    .line 314
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v6

    if-eqz v13, :cond_f

    .line 315
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCurRowNumCache:[[I

    aget-object v13, v13, v2

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v14, v14, v6

    invoke-interface {v14}, Landroid/database/Cursor;->getPosition()I

    move-result v14

    aput v14, v13, v6

    .line 313
    :cond_f
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 282
    .restart local v7    # "j":I
    .restart local v9    # "smallest":Ljava/lang/String;
    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    if-eqz v13, :cond_11

    .line 283
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 266
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 287
    .end local v6    # "i":I
    .end local v7    # "j":I
    .end local v9    # "smallest":Ljava/lang/String;
    :cond_12
    move/from16 v6, p1

    .restart local v6    # "i":I
    :goto_9
    move/from16 v0, p2

    if-gt v6, v0, :cond_e

    .line 288
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mAscending:Z

    if-eqz v13, :cond_14

    const-wide v9, 0x7fffffffffffffffL

    .line 289
    .local v9, "smallest":J
    :goto_a
    const/4 v11, -0x1

    .line 290
    const/4 v7, 0x0

    .restart local v7    # "j":I
    :goto_b
    if-ge v7, v8, :cond_1a

    .line 291
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    invoke-interface {v13}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v13

    if-eqz v13, :cond_15

    .line 290
    :cond_13
    :goto_c
    add-int/lit8 v7, v7, 0x1

    goto :goto_b

    .line 288
    .end local v7    # "j":I
    .end local v9    # "smallest":J
    :cond_14
    const-wide/high16 v9, -0x8000000000000000L

    goto :goto_a

    .line 294
    .restart local v7    # "j":I
    .restart local v9    # "smallest":J
    :cond_15
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mSortColumns:[I

    aget v14, v14, v7

    invoke-interface {v13, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 295
    .local v4, "current":J
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mAscending:Z

    if-eqz v13, :cond_18

    cmp-long v13, v4, v9

    if-gez v13, :cond_17

    const/4 v3, 0x1

    .line 296
    .local v3, "comparison":Z
    :goto_d
    if-ltz v11, :cond_16

    if-eqz v3, :cond_13

    .line 297
    :cond_16
    move-wide v9, v4

    .line 298
    move v11, v7

    goto :goto_c

    .line 295
    .end local v3    # "comparison":Z
    :cond_17
    const/4 v3, 0x0

    goto :goto_d

    :cond_18
    cmp-long v13, v4, v9

    if-lez v13, :cond_19

    const/4 v3, 0x1

    goto :goto_d

    :cond_19
    const/4 v3, 0x0

    goto :goto_d

    .line 301
    .end local v4    # "current":J
    :cond_1a
    move/from16 v0, p2

    if-eq v6, v0, :cond_e

    .line 304
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    if-eqz v13, :cond_1b

    .line 305
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v13, v13, v11

    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    .line 287
    :cond_1b
    add-int/lit8 v6, v6, 0x1

    goto :goto_9

    .line 318
    .end local v7    # "j":I
    .end local v9    # "smallest":J
    :cond_1c
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/liquable/nemo/util/crop/SortCursor;->mLastCacheHit:I

    .line 319
    const/4 v13, 0x1

    goto/16 :goto_0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 324
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 325
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 326
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 325
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 330
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 3

    .prologue
    .line 334
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 335
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 336
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-nez v2, :cond_1

    .line 335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 340
    :cond_1
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2}, Landroid/database/Cursor;->requery()Z

    move-result v2

    if-nez v2, :cond_0

    .line 341
    const/4 v2, 0x0

    .line 345
    :goto_1
    return v2

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .prologue
    .line 350
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    array-length v1, v2

    .line 351
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 352
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 353
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/SortCursor;->mCursors:[Landroid/database/Cursor;

    aget-object v2, v2, v0

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 351
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method
