.class Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;
.super Landroid/os/Handler;
.source "UserTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aviary/android/feather/library/utils/UserTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InternalHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;)V
    .locals 0

    .prologue
    .line 404
    invoke-direct {p0}, Lcom/aviary/android/feather/library/utils/UserTask$InternalHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 409
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;

    .line 410
    .local v0, "result":Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 422
    :goto_0
    return-void

    .line 413
    :pswitch_0
    iget-object v1, v0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mTask:Lcom/aviary/android/feather/library/utils/UserTask;

    iget-object v2, v0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mData:[Ljava/lang/Object;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    # invokes: Lcom/aviary/android/feather/library/utils/UserTask;->finish(Ljava/lang/Object;)V
    invoke-static {v1, v2}, Lcom/aviary/android/feather/library/utils/UserTask;->access$0(Lcom/aviary/android/feather/library/utils/UserTask;Ljava/lang/Object;)V

    goto :goto_0

    .line 416
    :pswitch_1
    iget-object v1, v0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mTask:Lcom/aviary/android/feather/library/utils/UserTask;

    iget-object v2, v0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mData:[Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lcom/aviary/android/feather/library/utils/UserTask;->onProgressUpdate([Ljava/lang/Object;)V

    goto :goto_0

    .line 419
    :pswitch_2
    iget-object v1, v0, Lcom/aviary/android/feather/library/utils/UserTask$UserTaskResult;->mTask:Lcom/aviary/android/feather/library/utils/UserTask;

    invoke-virtual {v1}, Lcom/aviary/android/feather/library/utils/UserTask;->onCancelled()V

    goto :goto_0

    .line 410
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
