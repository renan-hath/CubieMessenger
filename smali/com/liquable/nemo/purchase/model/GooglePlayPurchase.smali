.class public Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
.super Ljava/lang/Object;
.source "GooglePlayPurchase.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COLUMN_INDEX_ID:I = 0x0

.field public static final COLUMN_INDEX_NOTIFYID:I = 0x6

.field public static final COLUMN_INDEX_PRODUCT_ID:I = 0x1

.field public static final COLUMN_INDEX_SIGNATURE:I = 0x5

.field public static final COLUMN_INDEX_SIGNEDDATA:I = 0x4

.field public static final COLUMN_INDEX_STATE:I = 0x3

.field public static final COLUMN_INDEX_TIMESTAMP:I = 0x7

.field public static final COLUMN_INDEX_TO:I = 0x2

.field public static final COLUMN_NAME_NOTIFYID:Ljava/lang/String; = "PS_NOTIFYID"

.field public static final COLUMN_NAME_PRODUCT_ID:Ljava/lang/String; = "PS_PRODUCT_ID"

.field public static final COLUMN_NAME_SIGNATURE:Ljava/lang/String; = "PS_SIGNATURE"

.field public static final COLUMN_NAME_SIGNEDDATA:Ljava/lang/String; = "PS_SIGNEDDATA"

.field public static final COLUMN_NAME_STATE:Ljava/lang/String; = "PS_STATE"

.field public static final COLUMN_NAME_TIMESTAMP:Ljava/lang/String; = "PS_TIMESTAMP"

.field public static final COLUMN_NAME_TO:Ljava/lang/String; = "PS_PRODUCT_TO"

.field public static final PHASE_WAITING_PURCHASE:I = 0x1

.field public static final PHASE_WAITING_RPC:I = 0x2

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TABLE_NAME:Ljava/lang/String; = "PURCHASE_STATE"

.field public static final _ID:Ljava/lang/String; = "PS_ID"

.field private static final serialVersionUID:J = 0x1bdc21e70e1ca76bL


# instance fields
.field private id:J

.field private notifyId:Ljava/lang/String;

.field private phaseNumber:I

.field private final productId:Ljava/lang/String;

.field private signature:Ljava/lang/String;

.field private signedData:Ljava/lang/String;

.field private timestamp:J

.field private to:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "PS_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "PS_PRODUCT_ID"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "PS_PRODUCT_TO"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "PS_STATE"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "PS_SIGNEDDATA"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "PS_SIGNATURE"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "PS_NOTIFYID"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "PS_TIMESTAMP"

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 68
    const/4 v3, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 69
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "to"    # Ljava/lang/String;
    .param p3, "phaseNumber"    # I
    .param p4, "signedData"    # Ljava/lang/String;
    .param p5, "signature"    # Ljava/lang/String;
    .param p6, "notifyId"    # Ljava/lang/String;
    .param p7, "timestamp"    # J

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->productId:Ljava/lang/String;

    .line 80
    iput-object p2, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->to:Ljava/lang/String;

    .line 81
    iput p3, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->phaseNumber:I

    .line 82
    iput-object p4, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signedData:Ljava/lang/String;

    .line 83
    iput-object p5, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signature:Ljava/lang/String;

    .line 84
    iput-object p6, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->notifyId:Ljava/lang/String;

    .line 85
    iput-wide p7, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->timestamp:J

    .line 86
    return-void
.end method

.method public static fromCursor(Landroid/database/Cursor;)Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    .locals 9
    .param p0, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 44
    new-instance v0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;

    const/4 v1, 0x1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    .line 46
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 47
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    .line 48
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    .line 49
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x6

    .line 50
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x7

    .line 51
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    invoke-direct/range {v0 .. v8}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 52
    .local v0, "purchase":Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->setId(J)V

    .line 54
    return-object v0
.end method


# virtual methods
.method public createContentValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 89
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v1, "PS_PRODUCT_ID"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getProductId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string/jumbo v1, "PS_PRODUCT_TO"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getTo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string/jumbo v1, "PS_STATE"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getPhaseNumber()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 93
    const-string/jumbo v1, "PS_SIGNEDDATA"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getSignedData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string/jumbo v1, "PS_SIGNATURE"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string/jumbo v1, "PS_NOTIFYID"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getNotifyId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo v1, "PS_TIMESTAMP"

    invoke-virtual {p0}, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->getTimestamp()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 97
    return-object v0
.end method

.method public final getId()J
    .locals 2

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->id:J

    return-wide v0
.end method

.method public final getNotifyId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->notifyId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhaseNumber()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->phaseNumber:I

    return v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignature()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signature:Ljava/lang/String;

    return-object v0
.end method

.method public final getSignedData()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signedData:Ljava/lang/String;

    return-object v0
.end method

.method public final getTimestamp()J
    .locals 2

    .prologue
    .line 145
    iget-wide v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->timestamp:J

    return-wide v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->to:Ljava/lang/String;

    return-object v0
.end method

.method public final setId(J)V
    .locals 0
    .param p1, "id"    # J

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->id:J

    .line 106
    return-void
.end method

.method public final setNotifyId(Ljava/lang/String;)V
    .locals 0
    .param p1, "notifyId"    # Ljava/lang/String;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->notifyId:Ljava/lang/String;

    .line 114
    return-void
.end method

.method public final setPhaseNumber(I)V
    .locals 0
    .param p1, "phaseNumber"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->phaseNumber:I

    .line 122
    return-void
.end method

.method public final setSignature(Ljava/lang/String;)V
    .locals 0
    .param p1, "signature"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signature:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public final setSignedData(Ljava/lang/String;)V
    .locals 0
    .param p1, "signedData"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signedData:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0
    .param p1, "timestamp"    # J

    .prologue
    .line 149
    iput-wide p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->timestamp:J

    .line 150
    return-void
.end method

.method public final setTo(Ljava/lang/String;)V
    .locals 0
    .param p1, "to"    # Ljava/lang/String;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->to:Ljava/lang/String;

    .line 158
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "PurchaseState [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->id:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", productId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->productId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", to="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->to:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", phaseNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->phaseNumber:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signedData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signedData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->signature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", notifyId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->notifyId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/liquable/nemo/purchase/model/GooglePlayPurchase;->timestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
