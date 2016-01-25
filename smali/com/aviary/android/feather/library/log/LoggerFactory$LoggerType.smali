.class public final enum Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;
.super Ljava/lang/Enum;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/log/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoggerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

.field private static final synthetic ENUM$VALUES:[Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    const-string/jumbo v1, "ConsoleLoggerType"

    invoke-direct {v0, v1, v2}, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    .line 20
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    sget-object v1, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    aput-object v1, v0, v2

    sput-object v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ENUM$VALUES:[Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    return-object v0
.end method

.method public static values()[Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ENUM$VALUES:[Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    array-length v1, v0

    new-array v2, v1, [Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
