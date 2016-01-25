.class public final enum Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;
.super Ljava/lang/Enum;
.source "AbstractMediaMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/message/model/AbstractMediaMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransferState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

.field public static final enum COMPLETE:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

.field public static final enum PENDING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

.field public static final enum TRANSFERING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    const-string/jumbo v1, "PENDING"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->PENDING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    const-string/jumbo v1, "TRANSFERING"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    new-instance v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->COMPLETE:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    sget-object v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->PENDING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->TRANSFERING:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->COMPLETE:Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->$VALUES:[Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->$VALUES:[Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    invoke-virtual {v0}, [Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/message/model/AbstractMediaMessage$TransferState;

    return-object v0
.end method
