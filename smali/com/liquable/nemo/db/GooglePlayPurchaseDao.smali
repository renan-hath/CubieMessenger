.class public Lcom/liquable/nemo/db/GooglePlayPurchaseDao;
.super Ljava/lang/Object;
.source "GooglePlayPurchaseDao.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field static debugLogger:Lcom/liquable/nemo/util/Logger;


# instance fields
.field private final sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;

    invoke-static {v0}, Lcom/liquable/nemo/util/Logger;->getInstance(Ljava/lang/Class;)Lcom/liquable/nemo/util/Logger;

    move-result-object v0

    sput-object v0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    return-void
.end method

.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0
    .param p1, "sqLiteDatabase"    # Landroid/database/sqlite/SQLiteDatabase;

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    .line 25
    return-void
.end method

.method private changeToWaitingRPC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 4
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "firstTime"    # Z

    .prologue
    .line 44
    sget-object v1, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeToWaitingRPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " firstTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->findByProductId(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    move-result-object v0

    .line 46
    .local v0, "ps":Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    if-nez v0, :cond_0

    .line 47
    if-eqz p5, :cond_1

    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->createPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    move-result-object v0

    .line 60
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->setPhaseNumber(I)V

    .line 61
    invoke-virtual {v0, p3}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->setSignedData(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0, p4}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->setSignature(Ljava/lang/String;)V

    .line 63
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->setTimestamp(J)V

    .line 64
    invoke-direct {p0, v0}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->update(Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;)V

    .line 65
    invoke-direct {p0}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debug()V

    .line 66
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 50
    :cond_1
    sget-object v1, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "changeToWaitingRPC: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " firstTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private debug()V
    .locals 4

    .prologue
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "vvvvvv GooglePlayPurchase vvvvvv\n"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 79
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->listAll()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    .line 80
    .local v0, "s":Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    invoke-virtual {v0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string/jumbo v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 83
    .end local v0    # "s":Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    :cond_0
    const-string/jumbo v2, "^^^^^^ GooglePlayPurchase ^^^^^^\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    sget-object v2, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method private rawMapping(Landroid/database/Cursor;)Ljava/util/List;
    .locals 3
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 151
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 160
    :cond_0
    return-object v1

    .line 155
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, "purchaseStates":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 157
    invoke-static {p1}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    move-result-object v0

    .line 158
    .local v0, "group":Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private update(Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;)V
    .locals 7
    .param p1, "state"    # Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "PURCHASE_STATE"

    .line 165
    invoke-virtual {p1}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->createContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string/jumbo v3, "PS_PRODUCT_ID = ? AND PS_PRODUCT_TO = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 170
    invoke-virtual {p1}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getProductId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getTo()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 164
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 171
    return-void
.end method


# virtual methods
.method public changeToWaitingRPC(Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 8
    .param p3, "signedData"    # Ljava/lang/String;
    .param p4, "signature"    # Ljava/lang/String;
    .param p5, "firstTime"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)I"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "tos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v7, 0x0

    .line 33
    .local v7, "result":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_0

    .line 34
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->changeToWaitingRPC(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    add-int/2addr v7, v0

    .line 33
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return v7
.end method

.method public createPurchase(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    .locals 5
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 70
    sget-object v1, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "createGooglePlayPurchase: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v0, "ps":Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    iget-object v1, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "PURCHASE_STATE"

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->createContentValues()Landroid/content/ContentValues;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 73
    invoke-direct {p0}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debug()V

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->findByProductId(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    move-result-object v1

    return-object v1
.end method

.method public delete()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 88
    iget-object v0, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v1, "PURCHASE_STATE"

    invoke-virtual {v0, v1, v2, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public delete(Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-object v1, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debugLogger:Lcom/liquable/nemo/util/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "delete: productId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " to:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/liquable/nemo/util/Logger;->debug(Ljava/lang/String;)V

    .line 93
    iget-object v1, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v2, "PURCHASE_STATE"

    const-string/jumbo v3, "PS_PRODUCT_ID = ? AND PS_PRODUCT_TO = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 99
    .local v0, "i":I
    invoke-direct {p0}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->debug()V

    .line 100
    return v0
.end method

.method public findByProductId(Ljava/lang/String;Ljava/lang/String;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    .locals 11
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 104
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 105
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "PURCHASE_STATE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->PROJECTION:[Ljava/lang/String;

    const-string/jumbo v3, "PS_PRODUCT_ID = ? AND PS_PRODUCT_TO = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const/4 v6, 0x1

    aput-object p2, v4, v6

    move-object v6, v5

    move-object v7, v5

    move-object v8, v5

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 118
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 119
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    .line 124
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v5

    .line 122
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v10, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 124
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v5, v1

    goto :goto_0

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method public listAll()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 130
    .local v0, "sqBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string/jumbo v1, "PURCHASE_STATE"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 131
    iget-object v1, p0, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->sqLiteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    sget-object v2, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 140
    .local v9, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-direct {p0, v9}, Lcom/liquable/nemo/db/GooglePlayPurchaseDao;->rawMapping(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v10

    .line 141
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 142
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v10

    .line 146
    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    :goto_0
    return-object v10

    .restart local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v10    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;>;"
    :catchall_0
    move-exception v1

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v1
.end method
