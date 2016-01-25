.class Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;
.super Landroid/os/AsyncTask;
.source "ProfileSettingFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->onClick(Landroid/content/DialogInterface;I)V
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
        "Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;


# direct methods
.method constructor <init>(Lcom/liquable/nemo/profile/ProfileSettingFragment$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 83
    sget-object v0, Lcom/liquable/nemo/NemoManagers;->userManager:Lcom/liquable/nemo/user/model/UserManager;

    invoke-virtual {v0}, Lcom/liquable/nemo/user/model/UserManager;->discardCover()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 80
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    .line 88
    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    .line 100
    :goto_0
    return-void

    .line 91
    :cond_0
    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    const/4 v2, 0x4

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->removeDialog(I)V
    invoke-static {v1, v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$000(Lcom/liquable/nemo/profile/ProfileSettingFragment;I)V

    .line 92
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 93
    new-instance v0, Lcom/liquable/nemo/profile/CoverImage;

    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    .line 94
    invoke-virtual {v2}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getProfileUid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/liquable/nemo/profile/CoverImage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    .local v0, "coverImage":Lcom/liquable/nemo/profile/CoverImage;
    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    # invokes: Lcom/liquable/nemo/profile/ProfileSettingFragment;->getImageLoader()Lcom/liquable/nemo/util/ImageLoader;
    invoke-static {v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->access$100(Lcom/liquable/nemo/profile/ProfileSettingFragment;)Lcom/liquable/nemo/util/ImageLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    iget-object v2, v2, Lcom/liquable/nemo/profile/ProfileSettingFragment;->coverImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0}, Lcom/liquable/nemo/util/ImageLoader;->forceReloadImage(Landroid/widget/ImageView;Lcom/liquable/nemo/util/LoadableImage;)V

    goto :goto_0

    .line 98
    .end local v0    # "coverImage":Lcom/liquable/nemo/profile/CoverImage;
    :cond_1
    iget-object v1, p0, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->this$1:Lcom/liquable/nemo/profile/ProfileSettingFragment$1;

    iget-object v1, v1, Lcom/liquable/nemo/profile/ProfileSettingFragment$1;->this$0:Lcom/liquable/nemo/profile/ProfileSettingFragment;

    invoke-virtual {v1}, Lcom/liquable/nemo/profile/ProfileSettingFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0d01c6

    invoke-static {v1, v2}, Lcom/liquable/nemo/util/NemoUIs;->showToast(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 80
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/liquable/nemo/profile/ProfileSettingFragment$1$1;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 103
    return-void
.end method
