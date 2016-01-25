.class public final enum Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;
.super Ljava/lang/Enum;
.source "StickerMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/model/StickerMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StickerTransferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field public static final enum COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field public static final enum NOT_FOUND:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field public static final enum NOT_VISIBLE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field public static final enum PENDING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field public static final enum READY:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

.field public static final enum TRANSFERING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 17
    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->PENDING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    const-string/jumbo v1, "TRANSFERING"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    const-string/jumbo v1, "NOT_FOUND"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_FOUND:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    const-string/jumbo v1, "NOT_VISIBLE"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_VISIBLE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    const-string/jumbo v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->READY:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    .line 16
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->PENDING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->COMPLETE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_FOUND:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->NOT_VISIBLE:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->READY:Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->$VALUES:[Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->$VALUES:[Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    invoke-virtual {v0}, [Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/message/model/StickerMessage$StickerTransferState;

    return-object v0
.end method
