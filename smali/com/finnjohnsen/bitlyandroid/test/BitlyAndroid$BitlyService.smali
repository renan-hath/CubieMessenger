.class public enum Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;
.super Ljava/lang/Enum;
.source "BitlyAndroid.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "BitlyService"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

.field public static final enum BITLY:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

.field public static final enum JMP:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 109
    new-instance v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService$1;

    const-string/jumbo v1, "BITLY"

    invoke-direct {v0, v1, v2}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->BITLY:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    .line 115
    new-instance v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService$2;

    const-string/jumbo v1, "JMP"

    invoke-direct {v0, v1, v3}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->JMP:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    sget-object v1, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->BITLY:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    aput-object v1, v0, v2

    sget-object v1, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->JMP:Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    aput-object v1, v0, v3

    sput-object v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->$VALUES:[Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

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
    .line 108
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$1;

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 108
    const-class v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    return-object v0
.end method

.method public static values()[Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;
    .locals 1

    .prologue
    .line 108
    sget-object v0, Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->$VALUES:[Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    invoke-virtual {v0}, [Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/finnjohnsen/bitlyandroid/test/BitlyAndroid$BitlyService;

    return-object v0
.end method
