.class final enum Lcom/aviary/android/feather/AviaryMainController$STATE;
.super Ljava/lang/Enum;
.source "AviaryMainController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/AviaryMainController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/AviaryMainController$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/AviaryMainController$STATE;

.field public static final enum CLOSED_CANCEL:Lcom/aviary/android/feather/AviaryMainController$STATE;

.field public static final enum CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

.field public static final enum CLOSING:Lcom/aviary/android/feather/AviaryMainController$STATE;

.field public static final enum DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

.field public static final enum OPENED:Lcom/aviary/android/feather/AviaryMainController$STATE;

.field public static final enum OPENING:Lcom/aviary/android/feather/AviaryMainController$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    const-string/jumbo v1, "CLOSED_CANCEL"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/AviaryMainController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CANCEL:Lcom/aviary/android/feather/AviaryMainController$STATE;

    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    const-string/jumbo v1, "CLOSED_CONFIRMED"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/AviaryMainController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    const-string/jumbo v1, "CLOSING"

    invoke-direct {v0, v1, v5}, Lcom/aviary/android/feather/AviaryMainController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSING:Lcom/aviary/android/feather/AviaryMainController$STATE;

    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    const-string/jumbo v1, "DISABLED"

    invoke-direct {v0, v1, v6}, Lcom/aviary/android/feather/AviaryMainController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    const-string/jumbo v1, "OPENED"

    invoke-direct {v0, v1, v7}, Lcom/aviary/android/feather/AviaryMainController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    new-instance v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    const-string/jumbo v1, "OPENING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/AviaryMainController$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENING:Lcom/aviary/android/feather/AviaryMainController$STATE;

    .line 194
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aviary/android/feather/AviaryMainController$STATE;

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CANCEL:Lcom/aviary/android/feather/AviaryMainController$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSED_CONFIRMED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->CLOSING:Lcom/aviary/android/feather/AviaryMainController$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->DISABLED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENED:Lcom/aviary/android/feather/AviaryMainController$STATE;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aviary/android/feather/AviaryMainController$STATE;->OPENING:Lcom/aviary/android/feather/AviaryMainController$STATE;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->$VALUES:[Lcom/aviary/android/feather/AviaryMainController$STATE;

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
    .line 194
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/AviaryMainController$STATE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 194
    const-class v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/AviaryMainController$STATE;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/AviaryMainController$STATE;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/aviary/android/feather/AviaryMainController$STATE;->$VALUES:[Lcom/aviary/android/feather/AviaryMainController$STATE;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/AviaryMainController$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/AviaryMainController$STATE;

    return-object v0
.end method
