.class public abstract Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;
.super Ljava/lang/Object;
.source "ThreadPoolService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/ThreadPoolService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "BackgroundCallable"
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 117
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<TI;TO;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/aviary/android/feather/library/services/IAviaryController;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "controller"    # Lcom/aviary/android/feather/library/services/IAviaryController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/aviary/android/feather/library/services/IAviaryController;",
            "TI;)TO;"
        }
    .end annotation

    .prologue
    .line 119
    .local p0, "this":Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable;, "Lcom/aviary/android/feather/library/services/ThreadPoolService$BackgroundCallable<TI;TO;>;"
    .local p2, "param":Ljava/lang/Object;, "TI;"
    const/4 v0, 0x0

    return-object v0
.end method
