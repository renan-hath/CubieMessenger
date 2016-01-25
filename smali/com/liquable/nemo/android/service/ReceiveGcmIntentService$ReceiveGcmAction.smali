.class final enum Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;
.super Ljava/lang/Enum;
.source "ReceiveGcmIntentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/ReceiveGcmIntentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "ReceiveGcmAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

.field public static final enum ANSWER_CALL:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

.field public static final enum FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

.field public static final enum PLAY_NOTIFICATION:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

.field public static final enum RECEIVE_SYSTEM_NOTICE:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 26
    new-instance v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    const-string/jumbo v1, "RECEIVE_SYSTEM_NOTICE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->RECEIVE_SYSTEM_NOTICE:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    .line 27
    new-instance v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    const-string/jumbo v1, "PLAY_NOTIFICATION"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->PLAY_NOTIFICATION:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    .line 28
    new-instance v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    const-string/jumbo v1, "ANSWER_CALL"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->ANSWER_CALL:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    .line 29
    new-instance v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    const-string/jumbo v1, "FORUM_REPLY_DIGEST"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    sget-object v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->RECEIVE_SYSTEM_NOTICE:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->PLAY_NOTIFICATION:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->ANSWER_CALL:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->FORUM_REPLY_DIGEST:Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    aput-object v1, v0, v5

    sput-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->$VALUES:[Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->$VALUES:[Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/ReceiveGcmIntentService$ReceiveGcmAction;

    return-object v0
.end method
