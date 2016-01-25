.class public Lcom/aviary/android/feather/library/threading/ThreadMediaPool;
.super Ljava/lang/Object;
.source "ThreadMediaPool.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;,
        Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;,
        Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;,
        Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;
    }
.end annotation


# static fields
.field static mCpuCounter:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

.field static mNetworkCounter:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 18
    new-instance v0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;-><init>(I)V

    sput-object v0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool;->mCpuCounter:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    .line 19
    new-instance v0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    invoke-direct {v0, v1}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;-><init>(I)V

    sput-object v0, Lcom/aviary/android/feather/library/threading/ThreadMediaPool;->mNetworkCounter:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$ResourceCounter;

    return-void
.end method
