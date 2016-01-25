.class public final enum Lcom/liquable/nemo/sticker/StickerEvent;
.super Ljava/lang/Enum;
.source "StickerEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/sticker/StickerEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.sticker.StickerEvent"

.field public static final KEY_PACKAGE:Ljava/lang/String; = "com.liquable.nemo.sticker.KEY_PACKAGE"

.field public static final KEY_PRODUCTS:Ljava/lang/String; = "com.liquable.nemo.sticker.KEY_PRODUCTS"

.field public static final KEY_TOS:Ljava/lang/String; = "com.liquable.nemo.sticker.KEY_TOS"

.field public static final enum LIMITED_TIME_OFFER_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final enum PACKAGE_DOWNLOADING_STATE_CHANGED:Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final enum PURCHASE_CANCELED:Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final enum PURCHASE_RPC_FAILED_AFTER_RETRIES:Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final enum PURCHASE_RPC_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final enum PURCHASE_RPC_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

.field public static final enum PURCHASE_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "PURCHASE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 5
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "PURCHASE_RPC_STARTED"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 6
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "PURCHASE_RPC_SUCCESS"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 7
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "PURCHASE_CANCELED"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_CANCELED:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 8
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "PURCHASE_RPC_FAILED_AFTER_RETRIES"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_FAILED_AFTER_RETRIES:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 9
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "LIMITED_TIME_OFFER_SUCCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->LIMITED_TIME_OFFER_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 10
    new-instance v0, Lcom/liquable/nemo/sticker/StickerEvent;

    const-string/jumbo v1, "PACKAGE_DOWNLOADING_STATE_CHANGED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/sticker/StickerEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->PACKAGE_DOWNLOADING_STATE_CHANGED:Lcom/liquable/nemo/sticker/StickerEvent;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/liquable/nemo/sticker/StickerEvent;

    sget-object v1, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_STARTED:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_CANCELED:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/sticker/StickerEvent;->PURCHASE_RPC_FAILED_AFTER_RETRIES:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->LIMITED_TIME_OFFER_SUCCESS:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/sticker/StickerEvent;->PACKAGE_DOWNLOADING_STATE_CHANGED:Lcom/liquable/nemo/sticker/StickerEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->$VALUES:[Lcom/liquable/nemo/sticker/StickerEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/sticker/StickerEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/sticker/StickerEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/sticker/StickerEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/sticker/StickerEvent;->$VALUES:[Lcom/liquable/nemo/sticker/StickerEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/sticker/StickerEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/sticker/StickerEvent;

    return-object v0
.end method
