.class public interface abstract Lcom/liquable/future/IFuture;
.super Ljava/lang/Object;
.source "IFuture.java"

# interfaces
.implements Lcom/liquable/future/Skippable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/liquable/future/Skippable;"
    }
.end annotation


# virtual methods
.method public abstract consume(Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/Consumer",
            "<-TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract consumeError(Ljava/lang/Class;Lcom/liquable/future/Consumer;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/liquable/future/Consumer",
            "<TE;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract flatMap(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/FunctionWait",
            "<-TT;+TR;>;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract flatMapError(Ljava/lang/Class;Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/liquable/future/FunctionWait",
            "<TE;+TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract flatMapWhenComplete(Lcom/liquable/future/FunctionWait;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/liquable/future/FunctionWait",
            "<",
            "Ljava/lang/Void;",
            "*>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract map(Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/liquable/future/Function",
            "<-TT;+TR;>;)",
            "Lcom/liquable/future/IFuture",
            "<TR;>;"
        }
    .end annotation
.end method

.method public abstract mapError(Ljava/lang/Class;Lcom/liquable/future/Function;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Lcom/liquable/future/Function",
            "<TE;+TT;>;)",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation
.end method

.method public abstract run(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whenComplete(Ljava/lang/Runnable;)Lcom/liquable/future/IFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Lcom/liquable/future/IFuture",
            "<TT;>;"
        }
    .end annotation
.end method
