.class public Lcom/liquable/nemo/util/crop/BitmapManager;
.super Ljava/lang/Object;
.source "BitmapManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;,
        Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;,
        Lcom/liquable/nemo/util/crop/BitmapManager$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BitmapManager"

.field private static sManager:Lcom/liquable/nemo/util/crop/BitmapManager;


# instance fields
.field private final mThreadStatus:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/Thread;",
            "Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/liquable/nemo/util/crop/BitmapManager;->sManager:Lcom/liquable/nemo/util/crop/BitmapManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/liquable/nemo/util/crop/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    .line 92
    return-void
.end method

.method private declared-synchronized getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 165
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;

    .line 166
    .local v0, "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;

    .end local v0    # "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;-><init>(Lcom/liquable/nemo/util/crop/BitmapManager$1;)V

    .line 168
    .restart local v0    # "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    :cond_0
    monitor-exit p0

    return-object v0

    .line 165
    .end local v0    # "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public static declared-synchronized instance()Lcom/liquable/nemo/util/crop/BitmapManager;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcom/liquable/nemo/util/crop/BitmapManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/liquable/nemo/util/crop/BitmapManager;->sManager:Lcom/liquable/nemo/util/crop/BitmapManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcom/liquable/nemo/util/crop/BitmapManager;

    invoke-direct {v0}, Lcom/liquable/nemo/util/crop/BitmapManager;-><init>()V

    sput-object v0, Lcom/liquable/nemo/util/crop/BitmapManager;->sManager:Lcom/liquable/nemo/util/crop/BitmapManager;

    .line 83
    :cond_0
    sget-object v0, Lcom/liquable/nemo/util/crop/BitmapManager;->sManager:Lcom/liquable/nemo/util/crop/BitmapManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private declared-synchronized setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    .line 183
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;

    move-result-object v0

    iput-object p2, v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 184
    monitor-exit p0

    return-void

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized allowThreadDecoding(Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;)V
    .locals 3
    .param p1, "threads"    # Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;

    .prologue
    .line 102
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 103
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/crop/BitmapManager;->allowThreadDecoding(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 102
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 105
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized allowThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 95
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;

    move-result-object v0

    sget-object v1, Lcom/liquable/nemo/util/crop/BitmapManager$State;->ALLOW:Lcom/liquable/nemo/util/crop/BitmapManager$State;

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mState:Lcom/liquable/nemo/util/crop/BitmapManager$State;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 96
    monitor-exit p0

    return-void

    .line 95
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized canThreadDecoding(Ljava/lang/Thread;)Z
    .locals 4
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    const/4 v0, 0x1

    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    .local v1, "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    if-nez v1, :cond_0

    .line 137
    :goto_0
    monitor-exit p0

    return v0

    .line 136
    :cond_0
    :try_start_1
    iget-object v2, v1, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mState:Lcom/liquable/nemo/util/crop/BitmapManager$State;

    sget-object v3, Lcom/liquable/nemo/util/crop/BitmapManager$State;->CANCEL:Lcom/liquable/nemo/util/crop/BitmapManager$State;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v2, v3, :cond_1

    .line 137
    .local v0, "result":Z
    :goto_1
    goto :goto_0

    .line 136
    .end local v0    # "result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 129
    .end local v1    # "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized cancelThreadDecoding(Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;)V
    .locals 3
    .param p1, "threads"    # Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;

    .prologue
    .line 119
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Thread;

    .line 120
    .local v0, "t":Ljava/lang/Thread;
    invoke-virtual {p0, v0}, Lcom/liquable/nemo/util/crop/BitmapManager;->cancelThreadDecoding(Ljava/lang/Thread;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 119
    .end local v0    # "t":Ljava/lang/Thread;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 122
    :cond_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized cancelThreadDecoding(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 108
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/liquable/nemo/util/crop/BitmapManager;->getOrCreateThreadStatus(Ljava/lang/Thread;)Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;

    move-result-object v0

    .line 109
    .local v0, "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    sget-object v1, Lcom/liquable/nemo/util/crop/BitmapManager$State;->CANCEL:Lcom/liquable/nemo/util/crop/BitmapManager$State;

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mState:Lcom/liquable/nemo/util/crop/BitmapManager$State;

    .line 110
    iget-object v1, v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    if-eqz v1, :cond_0

    .line 111
    iget-object v1, v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1}, Landroid/graphics/BitmapFactory$Options;->requestCancelDecode()V

    .line 115
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 108
    .end local v0    # "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "options"    # Landroid/graphics/BitmapFactory$Options;

    .prologue
    const/4 v0, 0x0

    .line 144
    iget-boolean v2, p2, Landroid/graphics/BitmapFactory$Options;->mCancel:Z

    if-eqz v2, :cond_0

    .line 158
    :goto_0
    return-object v0

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 149
    .local v1, "thread":Ljava/lang/Thread;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/crop/BitmapManager;->canThreadDecoding(Ljava/lang/Thread;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 150
    const-string/jumbo v2, "BitmapManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is not allowed to decode."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 154
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/liquable/nemo/util/crop/BitmapManager;->setDecodingOptions(Ljava/lang/Thread;Landroid/graphics/BitmapFactory$Options;)V

    .line 155
    invoke-static {p1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 157
    .local v0, "b":Landroid/graphics/Bitmap;
    invoke-virtual {p0, v1}, Lcom/liquable/nemo/util/crop/BitmapManager;->removeDecodingOptions(Ljava/lang/Thread;)V

    goto :goto_0
.end method

.method declared-synchronized removeDecodingOptions(Ljava/lang/Thread;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;

    .prologue
    .line 174
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/liquable/nemo/util/crop/BitmapManager;->mThreadStatus:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;

    .line 175
    .local v0, "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;->mOptions:Landroid/graphics/BitmapFactory$Options;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    monitor-exit p0

    return-void

    .line 174
    .end local v0    # "status":Lcom/liquable/nemo/util/crop/BitmapManager$ThreadStatus;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
