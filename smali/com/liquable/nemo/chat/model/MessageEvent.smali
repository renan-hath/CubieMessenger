.class public final enum Lcom/liquable/nemo/chat/model/MessageEvent;
.super Ljava/lang/Enum;
.source "MessageEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/chat/model/MessageEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/chat/model/MessageEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.chat.model.MESSAGE_EVENT"

.field public static final enum ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

.field public static final enum DELETE:Lcom/liquable/nemo/chat/model/MessageEvent;

.field public static final KEY_FROM_SUB_ACCOUNT:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_FROM_SUB_ACCOUNT"

.field public static final KEY_MESSAGE:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_MESSAGE"

.field public static final KEY_MESSAGE_ID:Ljava/lang/String; = "com.liquable.nemo.chat.model.KEY_MESSAGE_ID"

.field public static final enum RESEND:Lcom/liquable/nemo/chat/model/MessageEvent;

.field public static final enum SECRET_UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

.field public static final enum UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/chat/model/MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/chat/model/MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->DELETE:Lcom/liquable/nemo/chat/model/MessageEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/chat/model/MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    const-string/jumbo v1, "RESEND"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/chat/model/MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->RESEND:Lcom/liquable/nemo/chat/model/MessageEvent;

    new-instance v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    const-string/jumbo v1, "SECRET_UPDATE"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/chat/model/MessageEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->SECRET_UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/liquable/nemo/chat/model/MessageEvent;

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->ADD:Lcom/liquable/nemo/chat/model/MessageEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->DELETE:Lcom/liquable/nemo/chat/model/MessageEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->RESEND:Lcom/liquable/nemo/chat/model/MessageEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/chat/model/MessageEvent;->SECRET_UPDATE:Lcom/liquable/nemo/chat/model/MessageEvent;

    aput-object v1, v0, v6

    sput-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/MessageEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/chat/model/MessageEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/chat/model/MessageEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/chat/model/MessageEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/chat/model/MessageEvent;->$VALUES:[Lcom/liquable/nemo/chat/model/MessageEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/chat/model/MessageEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/chat/model/MessageEvent;

    return-object v0
.end method
