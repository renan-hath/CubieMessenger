.class Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;
.super Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YoutubeQueryResultList"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

.field private willSearch:Z


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 1
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$1;)V

    .line 136
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;-><init>(Landroid/app/Activity;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->adapter:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    .line 137
    return-void
.end method

.method static synthetic access$500(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;)V
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->dispatchTask()V

    return-void
.end method

.method static synthetic access$602(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;
    .param p1, "x1"    # Z

    .prologue
    .line 132
    iput-boolean p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->willSearch:Z

    return p1
.end method

.method private dispatchTask()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    # getter for: Lcom/liquable/nemo/chat/YoutubePickerActivity;->searchKey:Ljava/lang/String;
    invoke-static {v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity;->access$300(Lcom/liquable/nemo/chat/YoutubePickerActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 143
    :cond_0
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$1;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$1;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 199
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->willSearch:Z

    if-eqz v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 207
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$2;

    invoke-direct {v1, p0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList$2;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 214
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeQueryResultList;->willSearch:Z

    goto :goto_0
.end method
