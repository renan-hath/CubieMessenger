.class public final enum Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
.super Ljava/lang/Enum;
.source "Moa.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/headless/moa/Moa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CPUArchAbi"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CPU_TYPE_ARM5:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

.field public static final enum CPU_TYPE_ARM7:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

.field public static final enum CPU_TYPE_NONE:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

.field public static final enum CPU_TYPE_X86:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    const-string/jumbo v1, "CPU_TYPE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_NONE:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    new-instance v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    const-string/jumbo v1, "CPU_TYPE_X86"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_X86:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    new-instance v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    const-string/jumbo v1, "CPU_TYPE_ARM5"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_ARM5:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    new-instance v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    const-string/jumbo v1, "CPU_TYPE_ARM7"

    invoke-direct {v0, v1, v5}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_ARM7:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_NONE:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_X86:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_ARM5:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_ARM7:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    aput-object v1, v0, v5

    sput-object v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ENUM$VALUES:[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static parseInt(I)Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 28
    invoke-static {}, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->values()[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    move-result-object v0

    .line 29
    .local v0, "ar":[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    if-ltz p0, :cond_0

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 30
    aget-object v1, v0, p0

    .line 32
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->CPU_TYPE_NONE:Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;->ENUM$VALUES:[Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/headless/moa/Moa$CPUArchAbi;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
