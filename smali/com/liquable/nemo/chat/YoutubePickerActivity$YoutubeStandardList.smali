.class Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;
.super Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;
.source "YoutubePickerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liquable/nemo/chat/YoutubePickerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "YoutubeStandardList"
.end annotation


# instance fields
.field private final category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

.field final synthetic this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;


# direct methods
.method public constructor <init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/util/ImageLoader;Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;)V
    .locals 1
    .param p2, "imageLoader"    # Lcom/liquable/nemo/util/ImageLoader;
    .param p3, "category"    # Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeList;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity;Lcom/liquable/nemo/chat/YoutubePickerActivity$1;)V

    .line 223
    iput-object p3, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    .line 224
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    invoke-direct {v0, p1, p2}, Lcom/liquable/nemo/chat/YoutubePickerAdapter;-><init>(Landroid/app/Activity;Lcom/liquable/nemo/util/ImageLoader;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->adapter:Lcom/liquable/nemo/chat/YoutubePickerAdapter;

    .line 225
    return-void
.end method

.method static synthetic access$700(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;)Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;
    .locals 1
    .param p0, "x0"    # Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;

    .prologue
    .line 218
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->category:Lcom/liquable/nemo/youtube/YoutubeApiClient$Category;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 229
    new-instance v0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;

    iget-object v1, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->this$0:Lcom/liquable/nemo/chat/YoutubePickerActivity;

    invoke-direct {v0, p0, v1}, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList$1;-><init>(Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    .line 286
    iget-object v0, p0, Lcom/liquable/nemo/chat/YoutubePickerActivity$YoutubeStandardList;->task:Lcom/liquable/nemo/util/RpcAsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/RpcAsyncTask;->execute([Ljava/lang/Object;)V

    .line 287
    return-void
.end method
