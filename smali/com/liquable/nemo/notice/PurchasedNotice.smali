.class public Lcom/liquable/nemo/notice/PurchasedNotice;
.super Lcom/liquable/nemo/notice/BaseNotice;
.source "PurchasedNotice.java"


# annotations
.annotation runtime Lorg/codehaus/jackson/annotate/JsonTypeInfo;
    use = .enum Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;->NAME:Lorg/codehaus/jackson/annotate/JsonTypeInfo$Id;
.end annotation


# instance fields
.field private final noticeTime:Ljava/util/Date;

.field private final orderId:Ljava/lang/String;

.field private final productId:Ljava/lang/String;

.field private final productName:Ljava/lang/String;

.field private final to:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p1, "orderId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "orderId"
        .end annotation
    .end param
    .param p2, "productId"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productId"
        .end annotation
    .end param
    .param p3, "productName"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "productName"
        .end annotation
    .end param
    .param p4, "to"    # Ljava/lang/String;
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "to"
        .end annotation
    .end param
    .param p5, "noticeTime"    # J
        .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
            value = "noticeTime"
        .end annotation
    .end param
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonCreator;
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/liquable/nemo/notice/BaseNotice;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->orderId:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->productId:Ljava/lang/String;

    .line 35
    iput-object p3, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->productName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->to:Ljava/lang/String;

    .line 37
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p5, p6}, Ljava/util/Date;-><init>(J)V

    iput-object v0, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->noticeTime:Ljava/util/Date;

    .line 38
    return-void
.end method


# virtual methods
.method public getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const v0, 0x7f0d0409

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->productName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNoticeTime()Ljava/util/Date;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 48
    iget-object v0, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->noticeTime:Ljava/util/Date;

    return-object v0
.end method

.method public final getOrderId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductId()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->productId:Ljava/lang/String;

    return-object v0
.end method

.method public final getProductName()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->productName:Ljava/lang/String;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/codehaus/jackson/annotate/JsonProperty;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/liquable/nemo/notice/PurchasedNotice;->to:Ljava/lang/String;

    return-object v0
.end method

.method public onNoticeClick(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 73
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/liquable/nemo/sticker/StickerShopActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 75
    return-void
.end method
