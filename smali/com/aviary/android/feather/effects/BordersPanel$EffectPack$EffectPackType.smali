.class final enum Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;
.super Ljava/lang/Enum;
.source "BordersPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/effects/BordersPanel$EffectPack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "EffectPackType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field public static final enum EXTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field public static final enum GET_MORE:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field public static final enum INTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field public static final enum LEFT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field public static final enum PACK_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

.field public static final enum RIGHT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1683
    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const-string/jumbo v1, "INTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->INTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const-string/jumbo v1, "EXTERNAL"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->EXTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const-string/jumbo v1, "PACK_DIVIDER"

    invoke-direct {v0, v1, v5}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->PACK_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const-string/jumbo v1, "LEFT_DIVIDER"

    invoke-direct {v0, v1, v6}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->LEFT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const-string/jumbo v1, "RIGHT_DIVIDER"

    invoke-direct {v0, v1, v7}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->RIGHT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    new-instance v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    const-string/jumbo v1, "GET_MORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->GET_MORE:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    .line 1682
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    sget-object v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->INTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->EXTERNAL:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->PACK_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->LEFT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->RIGHT_DIVIDER:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->GET_MORE:Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->$VALUES:[Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

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
    .line 1682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1682
    const-class v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;
    .locals 1

    .prologue
    .line 1682
    sget-object v0, Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->$VALUES:[Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    invoke-virtual {v0}, [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/aviary/android/feather/effects/BordersPanel$EffectPack$EffectPackType;

    return-object v0
.end method
