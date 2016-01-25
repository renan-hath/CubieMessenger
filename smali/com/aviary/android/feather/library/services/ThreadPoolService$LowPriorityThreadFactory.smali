.class Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;
.super Ljava/lang/Object;
.source "ThreadPoolService.java"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/services/ThreadPoolService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LowPriorityThreadFactory"
.end annotation


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPriority:I

.field final synthetic this$0:Lcom/aviary/android/feather/library/services/ThreadPoolService;


# direct methods
.method public constructor <init>(Lcom/aviary/android/feather/library/services/ThreadPoolService;Ljava/lang/String;I)V
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "priority"    # I

    .prologue
    .line 129
    iput-object p1, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->this$0:Lcom/aviary/android/feather/library/services/ThreadPoolService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 130
    iput-object p2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->mName:Ljava/lang/String;

    .line 131
    iput p3, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->mPriority:I

    .line 132
    return-void
.end method

.method static synthetic access$0(Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;)I
    .locals 1

    .prologue
    .line 125
    iget v0, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->mPriority:I

    return v0
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 136
    new-instance v0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory$1;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->mName:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;->mNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory$1;-><init>(Lcom/aviary/android/feather/library/services/ThreadPoolService$LowPriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object v0
.end method
