.class Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;
.super Lcom/aviary/android/feather/library/log/LoggerFactory$BaseLogger;
.source "LoggerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/log/LoggerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConsoleLogger"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "basetag"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$BaseLogger;-><init>(Ljava/lang/String;)V

    .line 83
    return-void
.end method


# virtual methods
.method public varargs debug([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 97
    iget-object v0, p0, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->formatArguments([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    return-void
.end method

.method public varargs error([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->formatArguments([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void
.end method

.method public varargs info([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->formatArguments([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    return-void
.end method

.method public varargs log([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->formatArguments([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    return-void
.end method

.method public varargs warning([Ljava/lang/Object;)V
    .locals 2
    .param p1, "args"    # [Ljava/lang/Object;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->tag:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/aviary/android/feather/library/log/LoggerFactory$ConsoleLogger;->formatArguments([Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method
