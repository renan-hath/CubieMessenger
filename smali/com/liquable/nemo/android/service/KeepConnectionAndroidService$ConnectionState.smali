.class public final enum Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
.super Ljava/lang/Enum;
.source "KeepConnectionAndroidService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/android/service/KeepConnectionAndroidService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final ACTION_NAME:Ljava/lang/String; = "com.liquable.nemo.android.service.CONNECTION_EVENT"

.field public static final enum CONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum CONNECTING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum DISCONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final KEY_CONNECT_STATE:Ljava/lang/String; = "com.liquable.nemo.android.service.KEY_CONNECT_STATE"

.field public static final KEY_LAYER_TYPE:Ljava/lang/String; = "com.liquable.nemo.android.service.KEY_LAYER_TYPE"

.field public static final KEY_SERVER_INFO:Ljava/lang/String; = "com.liquable.nemo.android.service.KEY_SERVER_NAME"

.field public static final enum LOGINED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum LOGINNING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum PREPARE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum SCHEDULE_RECONNECT:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum SERVER_SELECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

.field public static final enum WAITING_NETWORK_STATE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 43
    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "PREPARE"

    invoke-direct {v0, v1, v3}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->PREPARE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v4}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "SERVER_SELECTED"

    invoke-direct {v0, v1, v5}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SERVER_SELECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "LOGINED"

    invoke-direct {v0, v1, v7}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "DISCONNECTED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->DISCONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "WAITING_NETWORK_STATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->WAITING_NETWORK_STATE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .line 44
    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "LOGINNING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINNING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    new-instance v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    const-string/jumbo v1, "SCHEDULE_RECONNECT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SCHEDULE_RECONNECT:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    .line 42
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->PREPARE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SERVER_SELECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->CONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->DISCONNECTED:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->WAITING_NETWORK_STATE:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->LOGINNING:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->SCHEDULE_RECONNECT:Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->$VALUES:[Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    return-object v0
.end method

.method public static values()[Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->$VALUES:[Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    invoke-virtual {v0}, [Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/liquable/nemo/android/service/KeepConnectionAndroidService$ConnectionState;

    return-object v0
.end method
