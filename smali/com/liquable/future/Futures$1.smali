.class final Lcom/liquable/future/Futures$1;
.super Ljava/lang/Object;
.source "Futures.java"

# interfaces
.implements Lcom/liquable/future/EventLoop;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/future/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 13
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Futures not init yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAsync(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 18
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Futures not init yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addDelayed(JLjava/lang/Runnable;)V
    .locals 2
    .param p1, "milliseconds"    # J
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Futures not init yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enforceThread(Ljava/lang/String;)V
    .locals 2
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 28
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Futures not init yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
