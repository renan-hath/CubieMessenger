.class Lcom/liquable/nemo/util/crop/MediaFeed$3;
.super Ljava/lang/Object;
.source "MediaFeed.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/crop/MediaFeed;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/crop/MediaFeed;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/crop/MediaFeed;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/crop/MediaFeed;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 963
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$400(Lcom/liquable/nemo/util/crop/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 966
    :cond_1
    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Process;->setThreadPriority(I)V

    .line 967
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mDataSource:Lcom/liquable/nemo/util/crop/DataSource;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$300(Lcom/liquable/nemo/util/crop/MediaFeed;)Lcom/liquable/nemo/util/crop/DataSource;

    move-result-object v0

    .line 970
    .local v0, "dataSource":Lcom/liquable/nemo/util/crop/DataSource;
    if-eqz v0, :cond_2

    .line 971
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # invokes: Lcom/liquable/nemo/util/crop/MediaFeed;->loadMediaSets()V
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$500(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 973
    :cond_2
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # setter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$602(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z

    .line 974
    :goto_1
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$400(Lcom/liquable/nemo/util/crop/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/liquable/nemo/util/crop/ImageManager;->isMediaScannerScanning(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 976
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 979
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # setter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2, v6}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$602(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z

    .line 981
    :try_start_0
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$400(Lcom/liquable/nemo/util/crop/MediaFeed;)Landroid/content/Context;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 986
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    const-string/jumbo v3, "initializing..."

    const/4 v4, 0x1

    # invokes: Lcom/liquable/nemo/util/crop/MediaFeed;->showToast(Ljava/lang/String;I)V
    invoke-static {v2, v3, v4}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$700(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/lang/String;I)V

    .line 987
    if-eqz v0, :cond_3

    .line 988
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # invokes: Lcom/liquable/nemo/util/crop/MediaFeed;->loadMediaSets()V
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$500(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 990
    :cond_3
    const-wide/16 v2, 0x2710

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 991
    :catch_0
    move-exception v1

    .line 992
    .local v1, "e":Ljava/lang/InterruptedException;
    goto :goto_0

    .line 995
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_4
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # getter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$600(Lcom/liquable/nemo/util/crop/MediaFeed;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 998
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    const-string/jumbo v3, "loading new..."

    # invokes: Lcom/liquable/nemo/util/crop/MediaFeed;->showToast(Ljava/lang/String;I)V
    invoke-static {v2, v3, v6}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$700(Lcom/liquable/nemo/util/crop/MediaFeed;Ljava/lang/String;I)V

    .line 999
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # setter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mWaitingForMediaScanner:Z
    invoke-static {v2, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$602(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z

    .line 1000
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # invokes: Lcom/liquable/nemo/util/crop/MediaFeed;->loadMediaSets()V
    invoke-static {v2}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$500(Lcom/liquable/nemo/util/crop/MediaFeed;)V

    .line 1002
    :cond_5
    iget-object v2, p0, Lcom/liquable/nemo/util/crop/MediaFeed$3;->this$0:Lcom/liquable/nemo/util/crop/MediaFeed;

    # setter for: Lcom/liquable/nemo/util/crop/MediaFeed;->mLoading:Z
    invoke-static {v2, v5}, Lcom/liquable/nemo/util/crop/MediaFeed;->access$802(Lcom/liquable/nemo/util/crop/MediaFeed;Z)Z

    goto :goto_0
.end method
