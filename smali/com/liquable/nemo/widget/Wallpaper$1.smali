.class Lcom/liquable/nemo/widget/Wallpaper$1;
.super Landroid/os/AsyncTask;
.source "Wallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/widget/Wallpaper;->asyncLoadLargeWallpaper(Lcom/liquable/nemo/group/model/ChatGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/widget/Wallpaper;

.field final synthetic val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/widget/Wallpaper;Lcom/liquable/nemo/group/model/ChatGroup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/widget/Wallpaper;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->this$0:Lcom/liquable/nemo/widget/Wallpaper;

    iput-object p2, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "params"    # [Ljava/io/File;

    .prologue
    .line 54
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v3, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;

    move-result-object v0

    .line 55
    .local v0, "large":Ljava/io/File;
    if-nez v0, :cond_0

    .line 56
    sget-object v2, Lcom/liquable/nemo/NemoManagers;->chatGroupManager:Lcom/liquable/nemo/group/model/ChatGroupManager;

    iget-object v3, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->val$chatGroup:Lcom/liquable/nemo/group/model/ChatGroup;

    invoke-virtual {v2, v3}, Lcom/liquable/nemo/group/model/ChatGroupManager;->getSmallWallpaperFile(Lcom/liquable/nemo/group/model/ChatGroup;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/commons/io/FileUtils;->deleteQuietly(Ljava/io/File;)Z

    .line 57
    const/4 v2, 0x0

    .line 63
    :goto_0
    return-object v2

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->this$0:Lcom/liquable/nemo/widget/Wallpaper;

    .line 61
    # getter for: Lcom/liquable/nemo/widget/Wallpaper;->screenWidth:I
    invoke-static {v4}, Lcom/liquable/nemo/widget/Wallpaper;->access$000(Lcom/liquable/nemo/widget/Wallpaper;)I

    move-result v4

    iget-object v5, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->this$0:Lcom/liquable/nemo/widget/Wallpaper;

    .line 62
    # getter for: Lcom/liquable/nemo/widget/Wallpaper;->screenHeight:I
    invoke-static {v5}, Lcom/liquable/nemo/widget/Wallpaper;->access$100(Lcom/liquable/nemo/widget/Wallpaper;)I

    move-result v5

    .line 59
    invoke-static {v2, v3, v4, v5}, Lcom/liquable/nemo/util/ImageUtils;->decodeAndScaleDownToBitmap565(Ljava/lang/String;III)Lcom/liquable/nemo/util/Optional;

    move-result-object v1

    .line 63
    .local v1, "optionalBitmap":Lcom/liquable/nemo/util/Optional;, "Lcom/liquable/nemo/util/Optional<Landroid/graphics/Bitmap;>;"
    invoke-virtual {v1}, Lcom/liquable/nemo/util/Optional;->orNull()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Wallpaper$1;->doInBackground([Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1, "result"    # Landroid/graphics/Bitmap;

    .prologue
    .line 68
    if-nez p1, :cond_0

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->this$0:Lcom/liquable/nemo/widget/Wallpaper;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->this$0:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v2}, Lcom/liquable/nemo/widget/Wallpaper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/widget/Wallpaper;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 72
    iget-object v0, p0, Lcom/liquable/nemo/widget/Wallpaper$1;->this$0:Lcom/liquable/nemo/widget/Wallpaper;

    invoke-virtual {v0}, Lcom/liquable/nemo/widget/Wallpaper;->resetMatrix()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/widget/Wallpaper$1;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
