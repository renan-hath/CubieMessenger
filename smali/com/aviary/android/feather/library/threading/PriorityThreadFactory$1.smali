.class Lcom/aviary/android/feather/library/threading/PriorityThreadFactory$1;
.super Ljava/lang/Thread;
.source "PriorityThreadFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;


# direct methods
.method constructor <init>(Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0
    .param p2, "$anonymous0"    # Ljava/lang/Runnable;
    .param p3, "$anonymous1"    # Ljava/lang/String;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory$1;->this$0:Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;

    .line 20
    invoke-direct {p0, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory$1;->this$0:Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;

    # getter for: Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;->mPriority:I
    invoke-static {v0}, Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;->access$0(Lcom/aviary/android/feather/library/threading/PriorityThreadFactory;)I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 25
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 26
    return-void
.end method
