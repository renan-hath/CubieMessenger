.class public final enum Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
.super Ljava/lang/Enum;
.source "NativeToolFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/headless/filters/NativeToolFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ColorSplashBrushMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field public static final enum Erase:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field public static final enum Free:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field public static final enum None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

.field public static final enum Smart:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    const-string/jumbo v1, "None"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 29
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    const-string/jumbo v1, "Smart"

    invoke-direct {v0, v1, v3}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Smart:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 30
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    const-string/jumbo v1, "Free"

    invoke-direct {v0, v1, v4}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Free:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 31
    new-instance v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    const-string/jumbo v1, "Erase"

    invoke-direct {v0, v1, v5}, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Erase:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    .line 27
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->None:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Smart:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Free:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->Erase:Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->ENUM$VALUES:[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;->ENUM$VALUES:[Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/headless/filters/NativeToolFilter$ColorSplashBrushMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
