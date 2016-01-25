.class Lcom/aviary/android/feather/library/log/LoggerFactory$NullLogger;
.super Lcom/aviary/android/feather/library/log/LoggerFactory$BaseLogger;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/log/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NullLogger"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "basetag"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$BaseLogger;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public varargs debug([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 64
    return-void
.end method

.method public varargs error([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/aviary/android/feather/library/log/LoggerFactory$NullLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$NullLogger;->formatArguments([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    return-void
.end method

.method public varargs info([Ljava/lang/Object;)V
    .locals 0
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 75
    return-void
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 61
    return-void
.end method

.method public varargs warning([Ljava/lang/Object;)V
    .locals 0
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 67
    return-void
.end method
