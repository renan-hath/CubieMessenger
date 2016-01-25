.class public final enum Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
.super Ljava/lang/Enum;
.source "NativeToolFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/headless/filters/NativeToolFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TiltShiftMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

.field public static final enum Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

.field public static final enum None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

.field public static final enum Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    const-string/jumbo v1, "Radial"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    const-string/jumbo v1, "Linear"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    .line 23
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Radial:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->Linear:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->ENUM$VALUES:[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;->ENUM$VALUES:[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/headless/filters/NativeToolFilter$TiltShiftMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
