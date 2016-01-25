.class Lcom/liquable/nemo/util/ImageLoader$3;
.super Landroid/os/AsyncTask;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/util/ImageLoader;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/util/ImageLoader;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/util/ImageLoader;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/util/ImageLoader;

    .prologue
    .line 540
    iput-object p1, p0, Lcom/liquable/nemo/util/ImageLoader$3;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 540
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/util/ImageLoader$3;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 543
    iget-object v0, p0, Lcom/liquable/nemo/util/ImageLoader$3;->this$0:Lcom/liquable/nemo/util/ImageLoader;

    # getter for: Lcom/liquable/nemo/util/ImageLoader;->diskBitmapCache:Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;
    invoke-static {v0}, Lcom/liquable/nemo/util/ImageLoader;->access$400(Lcom/liquable/nemo/util/ImageLoader;)Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liquable/nemo/util/bitmap/DiskBitmapCache;->close()V

    .line 544
    const/4 v0, 0x0

    return-object v0
.end method
