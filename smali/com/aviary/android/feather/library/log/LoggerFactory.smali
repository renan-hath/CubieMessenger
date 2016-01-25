.class public Lcom/aviary/android/feather/library/log/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/log/LoggerFactory$BaseLogger;,
        Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;,
        Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;,
        Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;,
        Lcom/aviary/android/feather/library/log/LoggerFactory$NullLogger;
    }
.end annotation


# static fields
.field public static LOG_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    return-void
.end method

.method public static getLogger(Ljava/lang/String;Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;)Lcom/aviary/android/feather/library/log/LoggerFactory$Logger;
    .locals 1
    .param p0, "basetag"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    .prologue
    .line 112
    sget-boolean v0, Lcom/aviary/android/feather/library/log/LoggerFactory;->LOG_ENABLED:Z

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;->ConsoleLoggerType:Lcom/aviary/android/feather/library/log/LoggerFactory$LoggerType;

    if-ne p1, v0, :cond_0

    .line 114
    new-instance v0, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;-><init>(Ljava/lang/String;)V

    .line 117
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/aviary/android/feather/library/log/LoggerFactory$NullLogger;

    invoke-direct {v0, p0}, Lcom/aviary/android/feather/library/log/LoggerFactory$NullLogger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method
