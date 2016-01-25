.class public final enum Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
.super Ljava/lang/Enum;
.source "ExtraFileTransferEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.chat.model.EXTRA_FILE_TRANSFER_EVENT"

.field public static final enum ADD:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

.field public static final CODE:Ljava/lang/String; = "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_CODE"

.field public static final enum COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

.field public static final EXTRA_FILE_TYPE:Ljava/lang/String; = "com.liquable.nemo.chat.model.ExtraFileTransferEvent.EXTRA_FILE_TYPE"

.field public static final enum FAIL:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

.field public static final KEY_PATH:Ljava/lang/String; = "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_PATH"

.field public static final KEY_PROGRESS:Ljava/lang/String; = "com.liquable.nemo.chat.model.ExtraFileTransferEvent.KEY_PROGRESS"

.field public static final enum PROGRESS:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

.field public static final enum READY:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

.field public static final enum START:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;


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
    new-instance v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ADD:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    const-string/jumbo v1, "START"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->START:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    const-string/jumbo v1, "PROGRESS"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    const-string/jumbo v1, "READY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->READY:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    .line 3
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->ADD:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->START:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->READY:Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/model/ExtraFileTransferEvent;

    return-object v0
.end method
