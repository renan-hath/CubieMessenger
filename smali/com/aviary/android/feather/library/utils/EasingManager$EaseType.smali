.class public final enum Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;
.super Ljava/lang/Enum;
.source "EasingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/utils/EasingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EaseType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

.field public static final enum EaseIn:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

.field public static final enum EaseInOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

.field public static final enum EaseNone:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

.field public static final enum EaseOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    const-string/jumbo v1, "EaseIn"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseIn:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    new-instance v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    const-string/jumbo v1, "EaseOut"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    new-instance v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    const-string/jumbo v1, "EaseInOut"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseInOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    new-instance v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    const-string/jumbo v1, "EaseNone"

    invoke-direct {v0, v1, v5}, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseNone:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    .line 33
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseIn:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseInOut:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->EaseNone:Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ENUM$VALUES:[Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;->ENUM$VALUES:[Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/library/utils/EasingManager$EaseType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
