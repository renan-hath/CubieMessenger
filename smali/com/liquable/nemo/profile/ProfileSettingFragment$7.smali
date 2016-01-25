.class Lcom/liquable/nemo/profile/ProfileSettingFragment$7;
.super Lcom/liquable/nemo/util/RpcAsyncTask;
.source "ProfileSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment;->uploadAndUpdateCover()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/liquable/nemo/util/RpcAsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/liquable/nemo/profile/ProfileSettingFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 397
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-direct {p0, p2}, Lcom/liquable/nemo/util/RpcAsyncTask;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getTempCover()Ljava/io/File;

    move-result-object v0

    .line 402
    .local v0, "tempFile":Ljava/io/File;
    :try_start_0
    sget-object v1, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    invoke-virtual {v1, v0}, Lcom/liquable/nemo/user/model/UserManager;->uploadCover(Ljava/io/File;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/liquable/nemo/client/AsyncException;,
            Lcom/liquable/nemo/model/DomainException;
        }
    .end annotation

    .prologue
    .line 397
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->showDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$700(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 411
    return-void
.end method

.method protected postExecute()V
    .locals 2

    .prologue
    .line 415
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v1, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V
    invoke-static {v0, v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$800(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 416
    return-void
.end method

.method protected postExecuteSuccess(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 435
    :goto_0
    return-void

    .line 424
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d01c6

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->resetShareItem()V
    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$900(Lcom/liquable/nemo/profile/ProfileSettingFragment;)V

    .line 431
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$1000(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    new-instance v1, Lcom/liquable/nemo/profile/CoverImage;

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/liquable/nemo/util/ImageLoader;->remove(Lcom/liquable/nemo/util/LoadableImage;)V

    .line 432
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$1100(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment;->coverImageView:Landroid/widget/ImageView;

    new-instance v2, Lcom/liquable/nemo/profile/CoverImage;

    iget-object v3, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v3}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v4}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/liquable/nemo/util/ImageLoader;->loadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    .line 434
    iget-object v0, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v0}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0d04f3

    invoke-static {v0, v1}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic postExecuteSuccess(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 397
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$7;->postExecuteSuccess(Ljava/lang/Boolean;)V

    return-void
.end method
