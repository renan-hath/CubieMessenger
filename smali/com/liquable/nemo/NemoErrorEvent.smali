.class public final enum Lcom/liquable/nemo/NemoErrorEvent;
.super Ljava/lang/Enum;
.source "NemoErrorEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/NemoErrorEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/NemoErrorEvent;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.NEMO_EVENT"

.field public static final enum LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

.field public static final enum LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/liquable/nemo/NemoErrorEvent;

    const-string/jumbo v1, "LOGIN_ERROR_NEED_UPDATE"

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/NemoErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;

    new-instance v0, Lcom/liquable/nemo/NemoErrorEvent;

    const-string/jumbo v1, "LOGIN_ERROR_NEED_REINSTALL"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/NemoErrorEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/liquable/nemo/NemoErrorEvent;

    sget-object v1, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

    aput-object v1, v0, v3

    sput-object v0, Lcom/liquable/nemo/NemoErrorEvent;->$VALUES:[Lcom/liquable/nemo/NemoErrorEvent;

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

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/NemoErrorEvent;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/liquable/nemo/NemoErrorEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/NemoErrorEvent;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/NemoErrorEvent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/liquable/nemo/NemoErrorEvent;->$VALUES:[Lcom/liquable/nemo/NemoErrorEvent;

    invoke-virtual {v0}, [Lcom/liquable/nemo/NemoErrorEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/NemoErrorEvent;

    return-object v0
.end method


# virtual methods
.method public getDialogMessageId()I
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;

    if-ne p0, v0, :cond_0

    .line 10
    const v0, 0x7f0d0501

    .line 15
    :goto_0
    return v0

    .line 12
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

    if-ne p0, v0, :cond_1

    .line 13
    const v0, 0x7f0d0341

    goto :goto_0

    .line 15
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getDialogTitleId()I
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_UPDATE:Lcom/liquable/nemo/NemoErrorEvent;

    if-ne p0, v0, :cond_0

    .line 20
    const v0, 0x7f0d0502

    .line 25
    :goto_0
    return v0

    .line 22
    :cond_0
    sget-object v0, Lcom/liquable/nemo/NemoErrorEvent;->LOGIN_ERROR_NEED_REINSTALL:Lcom/liquable/nemo/NemoErrorEvent;

    if-ne p0, v0, :cond_1

    .line 23
    const v0, 0x7f0d0342

    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method
