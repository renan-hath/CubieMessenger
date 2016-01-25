.class public final enum Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
.super Ljava/lang/Enum;
.source "MediaMessageTransferEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.chat.model.MEDIA_MESSAGE_TRANSFER_EVENT"

.field public static final enum COMPLETE:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

.field public static final enum FAIL:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

.field public static final KEY_PROGRESS:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_PROGRESS"

.field public static final KEY_REMOTE_KEYPATH:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_REMOTE_KEYPATH"

.field public static final KEY_TOPICS:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_TOPICS"

.field public static final enum PROGRESS:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    const-string/jumbo v1, "PROGRESS"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    const-string/jumbo v1, "COMPLETE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    const-string/jumbo v1, "FAIL"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->PROGRESS:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->COMPLETE:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->FAIL:Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/model/MediaMessageTransferEvent;

    return-object v0
.end method
