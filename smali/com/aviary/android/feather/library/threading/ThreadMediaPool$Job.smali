.class public interface abstract Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;
.super Ljava/lang/Object;
.source "ThreadMediaPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/threading/ThreadMediaPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Job"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public varargs abstract run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;",
            "[TI;)TO;"
        }
    .end annotation
.end method
