.class Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;
.super Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;
.source "AviaryGLSurfaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;->submit(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)Lcom/aviary/android/feather/library/threading/Future;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker",
        "<TI;TO;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

.field final synthetic val$job:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;

.field final synthetic val$params:[Ljava/lang/Object;


# direct methods
.method varargs constructor <init>(Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;Landroid/content/Context;Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 151
    .local p3, "x1":Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;, "Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job<TI;TO;>;"
    .local p4, "x2":Lcom/aviary/android/feather/library/threading/FutureListener;, "Lcom/aviary/android/feather/library/threading/FutureListener<TO;>;"
    .local p5, "x3":[Ljava/lang/Object;, "[TI;"
    iput-object p1, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->this$0:Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView;

    iput-object p6, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->val$job:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;

    iput-object p7, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->val$params:[Ljava/lang/Object;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Worker;-><init>(Landroid/content/Context;Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;Lcom/aviary/android/feather/library/threading/FutureListener;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 155
    const/4 v1, 0x0

    .line 157
    .local v1, "result":Ljava/lang/Object;, "TO;"
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->setMode(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 159
    :try_start_0
    iget-object v2, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->val$job:Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;

    iget-object v3, p0, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->val$params:[Ljava/lang/Object;

    invoke-interface {v2, p0, v3}, Lcom/aviary/android/feather/library/threading/ThreadMediaPool$Job;->run(Lcom/aviary/android/feather/library/threading/ThreadMediaPool$JobContext;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 165
    .end local v1    # "result":Ljava/lang/Object;, "TO;"
    :cond_0
    :goto_0
    monitor-enter p0

    .line 166
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {p0, v2}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->setMode(I)Z

    .line 167
    invoke-virtual {p0, v1}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->setResult(Ljava/lang/Object;)V

    .line 168
    invoke-virtual {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->setIsDone()V

    .line 169
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 170
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-virtual {p0}, Lcom/aviary/android/feather/opengl/AviaryGLSurfaceView$3;->fireOnDoneEvent()V

    .line 173
    return-void

    .line 160
    .restart local v1    # "result":Ljava/lang/Object;, "TO;"
    :catch_0
    move-exception v0

    .line 161
    .local v0, "ex":Ljava/lang/Throwable;
    const-string/jumbo v2, "Worker"

    const-string/jumbo v3, "Exception in running a job"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 170
    .end local v0    # "ex":Ljava/lang/Throwable;
    .end local v1    # "result":Ljava/lang/Object;, "TO;"
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
